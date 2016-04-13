----
-- SayIt.hs
-- by daniel
--
-- A work in progress
----

sayIt :: String -> IO () -> IO ()
sayIt string = \action -> do
  putStr string
  action

main :: IO ()
main
  = sayIt "Hi"
  . sayIt " "
  . sayIt "there"
  . sayIt "!"
  . sayIt "\n"
  $ return ()
