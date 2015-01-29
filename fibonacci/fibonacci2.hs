import System.Environment (getArgs)
import Data.Matrix


a :: Matrix Integer
a = fromLists [ [0, 1]
              , [1, 1]
              ]

v :: Matrix Integer
v = fromLists [ [0]
              , [1]
              ]

fib :: Integer -> Integer
fib n = getElem 1 1 (a^n * v)

make_range :: Integer -> [Integer]
make_range n = if n > 0
               then [1..n]
               else []

main :: IO ()
main = do
	args <- getArgs
	mapM_ print . map fib $ make_range ( read ( head args ) :: Integer )

