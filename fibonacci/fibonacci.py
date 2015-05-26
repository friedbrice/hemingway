import sys

# Define the n'th fibonacci number
def fib(k):
    if k <= 0:
        return 0
    elif k == 1 or k == 2:
        return 1
    else:
        return fib(k-1) + fib(k-2)

# Get user input from console
n = int(sys.argv[1])

# create a list of fibonacci numbers
fibs = list(map(fib, range(1, n+1)))
print(fibs)
