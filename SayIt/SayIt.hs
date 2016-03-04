----
-- SayIt.hs
-- by daniel
-- 
-- A work in progress
----

data Codom = IO () | (Maybe String -> Codom)

SayIt :: Maybe String -> Codom
SayIt Nothing   = print "Nothing"
SayIt (Just s0) = \input -> case input of {Nothing -> print s0;  Just s1 -> SayIt(s0 ++ s1)}
