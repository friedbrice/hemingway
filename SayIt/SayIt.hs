----
-- SayIt.hs
-- by daniel
--
-- A work in progress
----

data Codom = CodomIO (IO ()) | CodomFunc (Maybe String -> Codom)

sayIt :: Maybe String -> Codom
sayIt x = case x of
  Nothing -> CodomIO (print "Nothing")
  Just s0 -> CodomFunc f
    where
      f y = case y of
        Nothing -> CodomIO (print s0)
        Just s1 -> CodomFunc (sayIt(s0 ++ " " ++ s1))

--evalCodomFunc :: Codom -> Maybe String -> Codom
--evalCodomFunc (CodomFunc f) Nothing   = CodomIO (f Nothing)
--evalCodomFunc (CodomFunc f) (Just s0) = CodomFunc (f (Just s0))
