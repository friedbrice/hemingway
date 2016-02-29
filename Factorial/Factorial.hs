----
-- Factorial.hs
-- by Daniel Brice
-- Invoke as `Factorial <num>`
-- Prints <num> factorial
----
import System.Environment (getArgs)
import Data.List (foldl')

factorial :: Integer -> Integer
factorial n = foldl' (*) 1 [1..n]

main = print . factorial . read . head =<< getArgs
