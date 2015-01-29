import System.Environment (getArgs)

isPrime :: Integer -> Bool
isPrime n = null . dropWhile (0 /=) $ rems
  where
  rems = map (rem n) $ [1..k]
  k = ceiling . sqrt $ n


--main :: IO()
--main = mapM_ print . (\n -> filter isPrime [1..n]) . read . head =<< getArgs

