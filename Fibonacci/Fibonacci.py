###
# Fibonacci.py
# by Daniel Brice
# Invoke as `python3 Fibonacci.py <method> <num>`
# <method> should be "rec" or "fast"
# Prints the first <num> Fibonacci numbers
###
import sys

# Recursive
def recFibs(n):
  def fib(k):
    if k <= 1:
      return k
    else:
      return fib(k - 1) + fib(k - 2)
  fibs = list(map(fib, range(0, n + 1)))
  return fibs

# Memoized
def fastFibs(n):
  fibs = [0, 1]
  if n <= 1:
    return fibs
  else:
    for k in range(2, n + 1):
      fibs.append(fibs[k - 1] + fibs[k - 2])
    return fibs

# Console IO
method = sys.argv[1]
n = int(sys.argv[2])

if method == "rec":
  fibs = recFibs(n)
elif method == "fast":
  fibs = fastFibs(n)
else:
  print("Please specify \"rec\" or \"fast\".")
  exit(1)

out = "\n".join(list(map(str,fibs)))
print(out)
