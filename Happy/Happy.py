###
# Happy.py
# by Daniel Brice
# Invoke as `python3 Happy.py <num>`
# Prints all happy numbers not exceding <num>
# (A number is happy if the sequence generated by
# iterating squareSum eventually stabilizes on 1.)
##
import sys

def squareSum(n):
  # sums the squares of the digits of n
  num = n
  digs = []

  # split into digits
  while num // 10 > 0:
    digs.append(num % 10)
    num = num // 10
  digs.append(num)

  # square, sum, and return
  return sum(list(map(lambda n: n ** 2, digs)))

n = int(sys.argv[1])

happys = [1]
unhappys = []
unknowns = []

# get happys
for i in range(2, n + 1):
  k = i
  unknowns.append(k)

  while unknowns:
    s = squareSum(k)

    if s in happys:
      happys = happys + unknowns
      unknowns = []
    elif s in unhappys or s in unknowns:
      unhappys = unhappys + unknowns
      unknowns = []
    else:
      unknowns.append(s)
      k = s

# filter and sort happys
happys = list(set(happys))
happys = list(filter(lambda x: x <= n, happys))
happys = sorted(happys)

# print one per line
print("\n".join(list(map(str,happys))))
