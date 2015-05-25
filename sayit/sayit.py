### As a function that returns itself

words = []

def sayIt( x = None ):
    global words
    if x is None:
        message = ' '.join(words)
        print(message)
        words = []
    else:
        words = words + [x]
        return sayIt

### As a class

class Words:
    def __init__(self):
        self.words = []
    def _(self, x = None):
        if x is None:
            message = ' '.join(self.words)
            print(message)
            self.words = []
        else:
            self.words = self.words + [x]
        return self
