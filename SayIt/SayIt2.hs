----
-- SayIt.hs
-- by daniel
--
-- A work in progress
----

sayIt :: String -> Maybe String -> Either (IO ()) String
sayIt str x = case x of
  Nothing -> Left  (print str)
  Just s  -> Right (str ++ s)
