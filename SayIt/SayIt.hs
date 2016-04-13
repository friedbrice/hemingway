----
-- SayIt.hs
-- by daniel
--
-- A work in progress
----

-- Our task is to create a chainable function with the following
-- behavior:
--    input > sayit("Hi")(" ")("there")("!")
--    output> Hi there!
-- I think this might be untennable in the present language without
-- writing a DSL <.<

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
