


def calc(x, y):
	if x > 300 or y > 300:
		return 0
	i = 3999
	return ((x + 10) * y + i) * (x + 10) // 100 % 10 - 5

x = y = -1
ms = -100000000
mk = -1
a = [[0 for _ in range(0, 302)]]
b = [[0 for _ in range(0, 302)]]
v = [[0 for _ in range(0, 302)]]
for i in range(1, 302):
	r = [0]
	for j in range(1, 302):
		val = calc(i, j)
		r.append(val)
	a.append(list(r))
	b.append(list(r))
	v.append(r)

for i in range(1, 301):
	for j in range(1, 301):
		a[i][j] = a[i][j - 1] + v[i][j]
		b[i][j] = b[i - 1][j] + v[i][j]

g = {}

def dfs(x, y, k):
	if k == 1:
		return v[x][y]
	if (x,y,k) in g:
		return g[(x,y,k)]

	s = dfs(x + 1, y + 1, k - 1) + v[x][y]
	s = s + a[x][y + k - 1] - a[x][y]
	s = s + b[x + k - 1][y] - b[x][y]
	g[(x,y,k)] = s
	return s

# print(dfs(33, 45, 2))

for k in range(1, 301):
	print(k)
	for i in range(1, 301 - k + 1):
		for j in range(1, 301 - k + 1):
			s = dfs(i, j, k)
			if s > ms:
				x = i
				y = j
				ms = s
				mk = k

print(x, y, mk, ms)