###
# Primes.py
# by Daniel Brice
# Invoke as `python3 Primes.py <num>`
# Prints primes not exceeding <num>
###
import sys
import math

def isPrime(n):
  if n == 1:
    return False
  if n == 2:
    return True

  ceil = math.ceil(math.sqrt(n))
  for i in range(2, ceil + 1):
    if n % i == 0:
      return False

  return True

n = int(sys.argv[1])
primes = list(filter(isPrime, range(1, n + 1)))
out = "\n".join(list(map(str,primes)))
print(out)
