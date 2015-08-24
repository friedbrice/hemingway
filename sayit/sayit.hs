--import Control.Monad.State

--emptyStack :: State [String] String
--emptyStack = state $ \s -> (unwords . reverse $ s, [])

--appendStack :: String -> State [String] ()
--appendStack x = state $ \s -> ((), x:s)

--printStack :: State [String] (IO ())
--printStack = do
--    a <- emptyStack
--    return $ putStrLn a

--main :: IO ()
--main = do
--    l <- getLine
--    if null l
--        then do
--            runState printStack
--        else do
--            return $ appendStack l
--            main
