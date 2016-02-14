{-# LANGUAGE OverloadedStrings #-}

module Main where

import Turtle
import Data.Text

main = do
  (status, output) <- shellStrict "brew list --versions" Turtle.empty
  putStrLn $ show $ Prelude.map (splitOn " ") $ splitOn "\n" output
