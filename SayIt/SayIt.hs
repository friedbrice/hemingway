----
-- SayIt.hs
-- by daniel
-- 
-- A work in progress
----

data Codom = IO () | String -> Codom

SayIt :: Maybe String -> Codom
SayIt Nothing = print "Nothing"
SayIt Just s0 = (\s1 -> SayIt(s0 ++ s1))
