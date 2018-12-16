
def calc(x, y):
	i = 3999
	return ((x + 10) * y + i) * (x + 10) // 100 % 10 - 5

x = y = -1
ms = -100000000
mk = -1
for k in range(1, 301): 
	print(k)
	for i in range(1, 301 - k + 1):
		for j in range(1, 301 - k + 1):
			s = 0
			for dx in range(0, k):
				for dy in range(0, k):
					s = s + calc(i + dx, j + dy)
			if s > ms:
				x = i
				y = j
				ms = s
				mk = k
print(x, y, mk)