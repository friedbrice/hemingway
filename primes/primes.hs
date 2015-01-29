import System.Environment (getArgs)

isPrime :: Integer -> Bool
isPrime n = null . dropWhile (0 /=) $ rems
  where
  rems = map (rem n) [2..k]
  k = ceiling . sqrt . fromInteger $ n


main :: IO()
main = mapM_ print . filter isPrime . enumFromTo 1 . read . head =<< getArgs
