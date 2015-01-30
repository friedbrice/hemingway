import System.Environment (getArgs)

isPrime :: Integer -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n | n >= 3
  = null . dropWhile (0 /=) $ rems
  where
  rems = map (rem n) . enumFromTo 2 . ceiling . sqrt . fromInteger $ n

main :: IO ()
main = mapM_ print . filter isPrime . enumFromTo 1 . read . head =<< getArgs
