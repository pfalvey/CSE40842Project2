{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import Network.HTTP.Types

main = scotty 80 $ do
  get "/" $ do                         -- handle GET request on "/" URL
    text "This was a cool GET request!"     -- send 'text/plain' response
  delete "/" $ do
    html "This was a DELETE request!"  -- send 'text/html' response
  post "/" $ do
    text "This was a POST request!"
  put "/" $ do
    text "This was a PUT request!"
  get "/questions/10" $ do
    text "Did you commit tax fraud? \n1: YOSHI! (NO WAY!) 2: YOSHI! (maybe...)"
