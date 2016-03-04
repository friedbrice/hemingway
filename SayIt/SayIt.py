###
# SayIt.py
# Created by daniel.
#
# SayIt requires we write a chainable function that takes either a string or
# no input. Upon taking a string, the chainable function must modify state
# and return itself. Upon taking no input, the chainable function must act on
# the current state and then clear the state.
#
# I provide four approaches to the solution:
# - As a function that modified a global
# - As a class with a single method that return the instance
# - As a closure, implemented by a wrapper function
# - As a closure, implemented by returning a lambda (and the magic of default arguments)
# The closure-by-wrapper implementation corresponds most closely with the design objective.
###

# as a function that modifies a global
words = []

def sayIt(x = None):
    global words
    if x is None:
        message = ' '.join(words)
        words = []
        return message
    else:
        words = words + [x]
        return sayIt

# as a class with one property and one method
class objectSayIt:
    def __init__(self):
        self.words = []
    def _(self, x = None):
        if x is None:
            message = ' '.join(self.words)
            self.words = []
            return message
        else:
            self.words = self.words + [x]
            return self

# as a closure, implemented by a wrapper function
def wrapperSayIt(word = None):
    acc = []

    def fn (x = None):
        nonlocal acc
        if x is None:
            message = ' '.join(acc)
            return message
        else:
            acc = acc + [x]
            return fn
    return fn(word)

# as a closure, implemented by returning a lambda
def closureSayIt(x = None, acc = []):
    if x is None:
        message = ' '.join(acc)
        return message
    else:
        return (lambda y = None : closureSayIt(y, acc + [x]))
