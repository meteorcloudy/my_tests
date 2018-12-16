
input = open("data-8.txt", "r")

line = input.readline()

num = [ int(i) for i in line.split() ]

meta_sum = 0
i = 0

def readNode():
	global i
	global meta_sum
	child_num = num[i]
	meta_num = num[i + 1]
	i = i + 2
	while child_num:
		readNode()
		child_num = child_num - 1
	while meta_num:
		meta_sum = meta_sum + num[i]
		i = i + 1
		meta_num = meta_num - 1

def main():
	readNode()
	print(meta_sum)

if __name__ == "__main__":
	main()