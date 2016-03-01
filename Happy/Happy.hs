----
-- Happy.hs
-- by Daniel Brice
----
import Data.List (foldl')
import System.Environment (getArgs)

digits :: Integer -> [Integer]
digits 0 = []
digits n = n `rem` 10 : digits (n `quot` 10)

squareSum :: Integer -> Integer
squareSum n = foldl' (+) 0 . map (^2) $ digits n

dropHalf :: [a] -> [a]
dropHalf [] = []
dropHalf [x] = [x]
dropHalf ( x1:x2:xs ) = x1 : dropHalf xs

isHappy :: Integer -> Bool
isHappy n = z == 1
  where
  stash = iterate squareSum n
  z = fst . head . dropWhile (uncurry (/=))
    . tail . zip stash . dropHalf $ stash

main :: IO()
main = mapM_ print . (\n -> filter isHappy [1..n]) . read . head =<< getArgs
