import System.Environment (getArgs)

factorial :: Integer -> Integer
factorial n = foldr (*) 1 [1..n]

main :: IO ()
main = do
	args <- getArgs
	print . factorial . read . head $ args

