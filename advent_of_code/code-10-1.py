input = open("data-10.txt", "r")

p = []

for line in input:
	xi, yi, dxi, dyi = [ int(i) for i in line.split() ]
	p.append((xi, yi, dxi, dyi))

def calc(p):
	d = 0
	for x in p:
		for y in p:
			d = abs(x[0] - y[0]) + abs(x[1] - y[1]) + d
	return d 

dist = calc(p)
s = 1
start = 10600
np = []
for x in p:
	np.append((x[0] + x[2] * start, x[1] + x[3] * start, x[2], x[3]))
p = np

for t in range(0, 1000000000):
	np = []
	for x in p:
		np.append((x[0] + x[2] * s, x[1] + x[3] * s, x[2], x[3]))
	n_dist = calc(np)
	print(t * s + start, dist)
	if n_dist > dist:
		min_x = min([x[0] for x in p])
		min_y = min([x[1] for x in p])
		max_x = max([x[0] for x in p])
		max_y = max([x[1] for x in p])
		g = []
		for x in p:
			g.append((x[0] - min_x, x[1] - min_y))
		for j in range(0, max_y - min_y + 1):
			for i in range(0, max_x - min_x + 1):
				if (i, j) in g:
					print('#', end='')
				else:
					print('.', end='')
			print("")
		break
	else:
		dist = n_dist
		p = np


