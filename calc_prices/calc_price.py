import random

# read data
f = open("input.txt", "r")
min_price, max_price = [float(i) for i in f.readline().split()]
prices_origin = [float(i) for i in f.readline().split()]

# Sort prices
prices = list(prices_origin)
prices.sort()

# Remove high and low prices
r = len(prices) // 6
prices = prices[r:-r]

# Calc P1
P1 = sum(prices) / len(prices)

# Calc P2
P2 = (P1 + max_price) / 2

# Calc N1
A = random.randrange(0, 6, 1)
if A == 0:
    B = random.randrange(5, 10, 1)
elif A == 5:
    B = 0
else:
    B = random.randrange(0, 10, 1)
N1 = float(str(A) + "." + str(B))

# Calc P3
P3 = P2 - N1

# Calc scores for each unit
scores = []
for p in prices_origin:
    if p >= P3:
        scores.append(30 - (p - P3) * 0.2)
    else:
        scores.append(30 - (P3 - p) * 0.1)

print("P1", P1)
print("P2", P2)
print("N1", N1)
print("P3", P3)
print("Scores: " + str(scores))
