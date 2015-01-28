import System.Environment (getArgs)

fib :: Integer -> Integer

fib 1 = 1
fib 2 = 1
fib 3 = 2

fib n = fib(n-1) + fib(n-2)

make_range :: Integer -> [Integer]
make_range n = [1,2,...,n]

main :: IO ()
main = do
	args <- getArgs
	output = map fib $ make_range $ read ( head args ) :: Integer
	mapM_ show output

