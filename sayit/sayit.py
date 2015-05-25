### Prototype

# words = []

# def sayIt( x = None ):
# 	global words
# 	if x is None:
# 		message = ' '.join(words)
# 		print(message)
# 	else:
# 		words = words + [x]

### Real Thing

class Words:
	def __init__(self):
		self.words = []
	def _(self, x = None):
		if x is None:
			message = ' '.join(self.words)
			print(message)
		else:
			self.words = self.words + [x]
		return self
