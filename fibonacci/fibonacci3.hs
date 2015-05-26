import System.Environment (getArgs)

fib :: Integer -> Integer
fib 1 = 1
fib 2 = 1
fib 3 = 2
fib n = fib(n-1) + fib(n-2)

main :: IO ()
main = do
    args <- getArgs
    let n = read . head $ args
    let fibs = map fib [1..n]
    print fibs
