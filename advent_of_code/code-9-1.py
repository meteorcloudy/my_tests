
n = 470  
m = 72170

l = [0]
s = []
c_m = 0

for _ in range(0, n):
	s.append(0)

for i in range(1, m + 1):
	k = i % n
	if i % 23 == 0:
		print("eat " + str(i))
		s[k] = s[k] + i
		n_m = (c_m - 7 + len(l)) % len(l)
		x = l.pop(n_m)
		print("Eat " + str(x))
		s[k] = s[k] + x
		c_m = n_m
	else:
		n_m = (c_m + 2) % len(l)
		l.insert(n_m, i)
		c_m = n_m

print(max(s))


