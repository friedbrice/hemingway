import System.Environment (getArgs)



main :: IO ()
main = print . read . head =<< getArgs
