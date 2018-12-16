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
print(q)
ans = ""
while len(q):
	s = 0
	for idx, val in enumerate(q):
		if val < q[s]:
			s = idx
	ans = ans + q[s]
	print(ans)
	for y in g.get(q[s], []):
		d[y] = d[y] - 1
		if d[y] == 0:
			q.append(y)
	q.pop(s)

print(ans)

