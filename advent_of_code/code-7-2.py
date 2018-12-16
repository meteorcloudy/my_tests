g = {}
d = {}

input = open("data-7.txt", "r")
for line in input:
	x, y = line.split()
	if not g.get(x, None):
		g[x] = {}
	g[x][y] = True
	d[x] = d.get(x, 0) + 0
	d[y] = d.get(y, 0) + 1

q = []

for x in d:
	if d.get(x, 0) == 0:
		q.append(x)

min_t = 1000000000
N = 5
M = 60


def cost(a):
	return ord(a) - ord('A') + 1 + M


def dfs(t, scores, sq, sd):
	q = list(sq)
	d = {}
	d.update(sd)
	cores = list(scores)
	cores.sort()


	print(t, cores, q, d)
	global min_t

	if t >= min_t:
		return

	if cores[-1][1] != "":
		if t + cores[-1][0] >= min_t:
			return
	elif len(q) == 0:
		min_t = min(min_t, t)
		return


	r_t, job = cores[0]
	if r_t != 0:
		for i in range(0, len(cores)):
			ri_t, job_i = cores[i]
			cores[i] = (ri_t - r_t, job_i)
	t = t + r_t
	for i in range(0, len(cores)):
		if cores[i][0] == 0:
			job = cores[i][1]
			if job != "":
				for y in g.get(job, []):
					d[y] = d[y] - 1
					if d[y] == 0:
						q.append(y)
				cores[i] = (0, "")
		else:
			break

	if len(q) == 0:
		i = 0
		while i < len(cores) and cores[i][1] == "":
			i = i + 1
		if i < len(cores):
			r_t, job = cores[i]
			if r_t != 0:
				for j in range(0, len(cores)):
					ri_t, job_i = cores[j]
					cores[j] = (max(0, ri_t - r_t), job_i)
		dfs(t + r_t, cores, q, d)
	else:
		q.sort()
		for i, x in enumerate(q):
			nq = list(q)
			nq.pop(i)
			ncores = list(cores)
			ncores[0] = (cost(x), x)

			dfs(t, ncores, nq, d)



def main():
	cores = []
	for _ in range(0, N):
		cores.append((0, ""))
	dfs(0, cores, q, d)
	print(min_t)

if __name__ == "__main__":
	main()

