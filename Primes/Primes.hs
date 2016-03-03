----
-- Primes.hs
-- by Daniel Brice
-- Invoke as `Primes <num>`
-- Prints primes not exceeding <num>
----
import System.Environment (getArgs)

isPrime :: Integer -> Bool
isPrime n = case n of
  1 -> False
  2 -> True
  n -> null . dropWhile (0 /=) $ remainders
    where
      remainders = map (rem n) . enumFromTo 2
                 . ceiling . sqrt . fromInteger $ n

primes :: [Integer]
primes = filter isPrime $ [1..]

main :: IO ()
main = do
  args <- getArgs
  let n = read . head $ args
  mapM_ print $ takeWhile (<= n) primes
