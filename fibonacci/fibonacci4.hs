import System.Environment (getArgs)

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n | n >= 2 = fib(n-1) + fib(n-2)

fibs = map fib [1..]

main :: IO ()
main = do
    args <- getArgs
    let n = read . head $ args
    let fibs' = take n fibs
    print fibs'
