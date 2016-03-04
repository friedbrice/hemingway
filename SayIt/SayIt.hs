----
-- SayIt.hs
-- by daniel
-- 
-- A work in progress
----

data Codom = CodomIO (IO ()) | CodomFunc (Maybe String -> Codom)

sayIt :: Maybe String -> Codom
sayIt Nothing   = CodomIO (print "Nothing")
sayIt (Just s0) = CodomFunc (\input -> case input of {Nothing -> CodomIO (print s0);  Just s1 -> CodomFunc (SayIt(s0 ++ s1)}))
-- this has the basic control structure and state information. we just need a way to evaluate a CodomFunc

evalCodomFunc :: Codom -> Maybe String -> Codom
evalCodomFunc (CodomFunc f) Nothing   = CodomIO (f Nothing)
evalCodomFunc (CodomFunc f) (Just s0) = CodomFunc (f (Just s0))
evalCodomFunc (CodomIO a)   Nothing   = CodomIO a
evalCodomFunc (CodomIO a)   (Just s0) = error "This shouldn't happen..."
