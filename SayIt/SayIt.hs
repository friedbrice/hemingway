----
-- SayIt.hs
-- by daniel
-- 
-- A work in progress
----

data Codom = CodomIO (IO ()) | CodomFunc (Maybe String -> Codom)

SayIt :: Maybe String -> Codom
SayIt Nothing   = CodomIO (print "Nothing")
SayIt (Just s0) = CodomFunc (\input -> case input of {Nothing -> print s0;  Just s1 -> SayIt(s0 ++ s1)})
