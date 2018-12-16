
class Node:
	val = 0
	pre = None
	nex = None

	def __init__(self, val, pre, nex):
		self.val = val
		self.pre = pre
		self.nex = nex


def go_next(node, c):
	cur = node
	while c:
		c = c - 1
		cur = cur.nex
	return cur

def go_prev(node, c):
	cur = node
	while c:
		c = c - 1
		cur = cur.pre
	return cur

def remove_node(node):
	nex = node.nex
	pre = node.pre
	pre.nex = nex
	nex.pre = pre
	return nex

def insert_node(node, val):
	pre = node.pre
	new_node = Node(val, pre, node)
	pre.nex = new_node
	node.pre = new_node
	return new_node

def main():
	n = 470  
	m = 7217000
	max_score = 0
	s = []
	for i in range(0, n):
		s.append(0)

	cur = Node(0, None, None)
	cur.pre = cur
	cur.nex = cur
	
	for i in range(1, m + 1):
		k = i % n
		if i % 23 == 0:
			# print("eat " + str(i))
			s[k] = s[k] + i
			nex = go_prev(cur, 7)
			# print("Eat " + str(nex.val))
			s[k] = s[k] + nex.val
			max_score = max(max_score, s[k])
			cur = remove_node(nex)
		else:
			nex = go_next(cur, 2)
			cur = insert_node(nex, i)

	print(max_score)

if __name__ == "__main__":
	main()