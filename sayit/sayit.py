### as a function that modifies a global
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

### as a class with one property and one method
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

### as a closure, implemented by a wrapper function
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

### as a closure, implemented by returning a lambda
def closureSayIt(x = None, acc = []):
    if x is None:
        message = ' '.join(acc)
        return message
    else:
        return (lambda y = None : closureSayIt(y, acc + [x]))
