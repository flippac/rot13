module Main where

import Data.List

lSet = ['a'..'m'] ++ ['A'..'M']
rSet = ['n'..'z'] ++ ['N'..'Z']
rot13map = (zip lSet rSet) ++ (zip rSet lSet)

rot13 s = map (\c -> case lookup c rot13map of
                       Nothing -> c
                       Just c' -> c')
              s
              
headeredRot13 s = case break (== ']') s of
                    (s', []) -> rot13 s
                    (start, (']':end)) -> start ++ "]" ++ (rot13 end)

main = do c <- getContents
          putStr (unlines . map headeredRot13 . lines $ c)
