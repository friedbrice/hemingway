import System.Environment (getArgs)

isPrime :: Integer -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime 4 = False
isPrime 5 = True
isPrime n | n >= 6
  = null . dropWhile (0 /=) $ rems
  where
  rems = map (rem n) $ (`take` primes) . ceiling . sqrt . fromInteger $ n

primes :: [Integer]
primes = filter isPrime $ enumFrom 1

main :: IO ()
main = mapM_ print . filter isPrime . enumFromTo 1 . read . head =<< getArgs
