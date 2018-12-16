
input = open("data-8.txt", "r")

line = input.readline()

num = [ int(i) for i in line.split() ]

meta_sum = 0
i = 0

def readNode():
	global i
	child_num = num[i]
	meta_num = num[i + 1]
	i = i + 2
	meta_child = []
	meta_node = 0
	for _ in range(0, child_num):
		meta_child.append(readNode())
	print(meta_child)
	while meta_num:
		if child_num == 0:
			meta_node = meta_node + num[i]
		else:
			if num[i] >= 1 and num[i] <= child_num:
				meta_node = meta_node + meta_child[num[i] - 1]
		i = i + 1
		meta_num = meta_num - 1
	return meta_node

def main():
	print(readNode())

if __name__ == "__main__":
	main()