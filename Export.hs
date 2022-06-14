{-# language ForeignFunctionInterface #-}
module Export where

import Fun (foo)

foreign export ccall "c_function" foo :: Int -> IO Int
