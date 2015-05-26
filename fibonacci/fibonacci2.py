### Efficient Fibonacci
import sys

# Initialize my fibs
fibs = [1, 1]

# Get user input from console
n = int(sys.argv[1])
if n <= 1:
    print(fibs)
    quit()

# Iterate over fibs, changing it in place
for k in range(2, n):
    fibs.append(fibs[k-1] + fibs[k-2])

print(fibs)

### This is closer to how a person calculates Fibonacci numbers.
### You construct a list, and just add the last two.
