import System.Environment (getArgs)
--import Data.Matrix

recFib :: Integer -> Integer
recFib n = case n of
  0 -> 0
  1 -> 1
  n -> recFib (n - 1) + recFib (n - 2)

matFib :: Integer -> Integer
matFib = undefined
--matFib n = getElem 1 1 (a ^ n * v)
--  where
--    a = fromList [ [0, 1]
--                 , [1, 1]
--                 ]
--    v = fromList [ [0]
--                 , [1]
--                 ]

fastFibs :: [Integer]
fastFibs = [0, 1] ++ [fastFibs !! (n - 1) + fastFibs !! (n - 2) | n <- [2..]]

main :: IO ()
main = do
  args <- getArgs
  if length args < 2 then error "Fibonacci <method> <int>" else do
  let method = args !! 0
  let n = read (args !! 1)
  putStrLn . unlines . map show $ take (n + 1) (fibs method)
    where
      fibs str = case str of
        "rec"  -> map recFib [0..]
        "mat"  -> map matFib [0..]
        "fast" -> fastFibs
        _      -> error "Please specify \"rec\", \"mat\", or \"fast\"."
