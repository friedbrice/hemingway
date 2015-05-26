import sys

def factorial(n):
    if n is 0:
        return 1
    else:
        return n * factorial(n-1)

print(factorial(int(sys.argv[1])))
