import Data.Either

data Saying = State String String
data Ins = Either String ()
data Outs = Either Saying (IO ())

sayIt :: Ins -> Outs
sayIt x = case x of Left s   -> 
                    Right () -> 
