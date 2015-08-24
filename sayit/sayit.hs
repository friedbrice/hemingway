-- this is quite possibly the dumbest haskell program ever written

split :: (Char -> Bool) -> String -> [String]
-- ^ thanks to Steve, http://stackoverflow.com/questions/4978578/how-to-split-a-string-in-haskell
split p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : split p s''
                            where (w, s'') = break p s'

remove :: Eq a => a -> [a] -> [a]
remove y xs = filter (/= y) xs

main' :: String -> IO ()
main' = print . unwords . split (== '(') . remove ')' . remove '\''

main :: IO ()
main = do
    input <- getLine
    if ((last input) /= ')' || (last . init $ input) /= '(')
        then print ""
        else main' input
