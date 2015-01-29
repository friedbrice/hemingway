import System.Environment (getArgs)
import Data.List (foldl')

factorial :: Integer -> Integer
factorial n = foldl' (*) 1 [1..n]

{-
main :: IO ()
main = do
	args <- getArgs
	print . factorial . read . head $ args
-}

main = print . factorial . read . head =<< getArgs
