{-# LANGUAGE OverloadedStrings #-}

module Main where

import Turtle
import Text

main = do
  (status, output) <- shellStrict "brew list --versions" empty
  putStrLn $ show $ Prelude.map (splitOn " ") $ splitOn "\n" output
