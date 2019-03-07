{-# LANGUAGE OverloadedStrings, GeneralizedNewtypeDeriving #-}
-- Alex Ayala
-- Steven Eisemann
-- Patrick Falvey
-- Smashkell
-- Hackers in the Bazaar
-- Project 2

import Web.Scotty
import Network.HTTP.Types
import Network.Wai.Middleware.Static
import Control.Applicative
import Control.Concurrent.STM
import Control.Monad.Reader
import Data.Monoid
import Data.Default.Class
import Data.String
import Data.Text.Lazy (Text)
import qualified Data.Text.Lazy as L
import Data.Typeable
import Data.String.Utils
import qualified Data.List as List 

main = scotty 80 $ do

    -- Serve static files (and chooses content type)
    middleware $ static

    -- Main landing page
    get "/" $ do
        sourceString <- liftIO (loadFileToText "page.html")
        html sourceString

    -- Redirect people who try to go to these URLs to /quiz/
    get "/quiz/1/" $ do
        redirect "/quiz/"
    get "/quiz/2/" $ do
        redirect "/quiz/"
    get "/quiz/3/" $ do
        redirect "/quiz/"
    get "/quiz/4/" $ do
        redirect "/quiz/"
    get "/quiz/5/" $ do
        redirect "/quiz/"
    get "/quiz/6/" $ do
        redirect "/quiz/"
    get "/quiz/7/" $ do
        redirect "/quiz/"
    get "/quiz/8/" $ do
        redirect "/quiz/"
    get "/quiz/9/" $ do
        redirect "/quiz/"
    get "/quiz/10/" $ do
        redirect "/quiz/"
    get "/results/" $ do
        redirect "/quiz/"

    -- Quiz Question endpoints. These replace contents of html files with parameters from
    -- previous questions
    get "/quiz/" $ do
        sourceString <- liftIO (loadFileToText "question1.html")
        html sourceString

    post "/quiz/2" $ do
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question2.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        html replacement1

    post "/quiz/3" $ do
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question3.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        html replacement2

    post "/quiz/4" $ do
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question4.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        html replacement3


    post "/quiz/5" $ do
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question5.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        replacement4 <- liftIO (fileStringReplace "$R4" (L.unpack resp4) replacement3)
        html replacement4

    post "/quiz/6" $ do
        resp5 <- param "resp5"
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question6.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        replacement4 <- liftIO (fileStringReplace "$R4" (L.unpack resp4) replacement3)
        replacement5 <- liftIO (fileStringReplace "$R5" (L.unpack resp5) replacement4)
        html replacement5

    post "/quiz/7" $ do
        resp6 <- param "resp6"
        resp5 <- param "resp5"
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question7.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        replacement4 <- liftIO (fileStringReplace "$R4" (L.unpack resp4) replacement3)
        replacement5 <- liftIO (fileStringReplace "$R5" (L.unpack resp5) replacement4)
        replacement6 <- liftIO (fileStringReplace "$R6" (L.unpack resp6) replacement5)
        html replacement6

    post "/quiz/8" $ do
        resp7 <- param "resp7"
        resp6 <- param "resp6"
        resp5 <- param "resp5"
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question8.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        replacement4 <- liftIO (fileStringReplace "$R4" (L.unpack resp4) replacement3)
        replacement5 <- liftIO (fileStringReplace "$R5" (L.unpack resp5) replacement4)
        replacement6 <- liftIO (fileStringReplace "$R6" (L.unpack resp6) replacement5)
        replacement7 <- liftIO (fileStringReplace "$R7" (L.unpack resp7) replacement6)
        html replacement7

    post "/quiz/9" $ do
        resp8 <- param "resp8"
        resp7 <- param "resp7"
        resp6 <- param "resp6"
        resp5 <- param "resp5"
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question9.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        replacement4 <- liftIO (fileStringReplace "$R4" (L.unpack resp4) replacement3)
        replacement5 <- liftIO (fileStringReplace "$R5" (L.unpack resp5) replacement4)
        replacement6 <- liftIO (fileStringReplace "$R6" (L.unpack resp6) replacement5)
        replacement7 <- liftIO (fileStringReplace "$R7" (L.unpack resp7) replacement6)
        replacement8 <- liftIO (fileStringReplace "$R8" (L.unpack resp8) replacement7)
        html replacement8

    post "/quiz/10" $ do
        resp9 <- param "resp9"
        resp8 <- param "resp8"
        resp7 <- param "resp7"
        resp6 <- param "resp6"
        resp5 <- param "resp5"
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"
        sourceString <- liftIO (loadFileToText "question10.html")
        replacement1 <- liftIO (fileStringReplace "$R1" (L.unpack resp1) sourceString)
        replacement2 <- liftIO (fileStringReplace "$R2" (L.unpack resp2) replacement1)
        replacement3 <- liftIO (fileStringReplace "$R3" (L.unpack resp3) replacement2)
        replacement4 <- liftIO (fileStringReplace "$R4" (L.unpack resp4) replacement3)
        replacement5 <- liftIO (fileStringReplace "$R5" (L.unpack resp5) replacement4)
        replacement6 <- liftIO (fileStringReplace "$R6" (L.unpack resp6) replacement5)
        replacement7 <- liftIO (fileStringReplace "$R7" (L.unpack resp7) replacement6)
        replacement8 <- liftIO (fileStringReplace "$R8" (L.unpack resp8) replacement7)
        replacement9 <- liftIO (fileStringReplace "$R9" (L.unpack resp9) replacement8)
        html replacement9

    -- Results page. Computes who you are based on the answers to questions
    post "/results/" $ do
        resp10 <- param "resp10"
        resp9 <- param "resp9"
        resp8 <- param "resp8"
        resp7 <- param "resp7"
        resp6 <- param "resp6"
        resp5 <- param "resp5"
        resp4 <- param "resp4"
        resp3 <- param "resp3"
        resp2 <- param "resp2"
        resp1 <- param "resp1"

        let chars = [("Mario", computeScore "mario" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Luigi", computeScore "luigi" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Donkey Kong", computeScore "dk" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Yoshi", computeScore "yoshi" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Pikachu", computeScore "pikachu" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Jigglypuff", computeScore "jigglypuff" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Kirby", computeScore "kirby" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Samus", computeScore "samus" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Fox", computeScore "fox" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Captain Falcon", computeScore "captain" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Link", computeScore "link" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10),
                     ("Ness", computeScore "ness" resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8 resp9 resp10)]

        sourceString <- liftIO (loadFileToText "youAre.html")
        replacement <- liftIO (fileStringReplace "$IMG" (findWinnerPicture (findWinner chars)) sourceString)
        replacement2 <- liftIO (fileStringReplace "$CHAR" (findWinner chars) replacement)
        html replacement2

-- Computes the score for the given character question based on answers
computeScore :: String -> String -> String -> String -> String -> String -> String -> String -> String -> String -> String -> Int
computeScore character a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 | (character == "fox") = fox "10" a10 (fox "9" a9 (fox "8" a8 (fox "7" a7 (fox "6" a6 (fox "5" a5 (fox "4" a4 (fox "3" a3 (fox "2" a2 (fox "1" a1 0)))))))))
                                                      | (character == "mario") = mario "10" a10 (mario "9" a9 (mario "8" a8 (mario "7" a7 (mario "6" a6 (mario "5" a5 (mario "4" a4 (mario "3" a3 (mario "2" a2 (mario "1" a1 0)))))))))
                                                      | (character == "dk") = dk "10" a10 (dk "9" a9 (dk "8" a8 (dk "7" a7 (dk "6" a6 (dk "5" a5 (dk "4" a4 (dk "3" a3 (dk "2" a2 (dk "1" a1 0)))))))))
                                                      | (character == "yoshi") = yoshi "10" a10 (yoshi "9" a9 (yoshi "8" a8 (yoshi "7" a7 (yoshi "6" a6 (yoshi "5" a5 (yoshi "4" a4 (yoshi "3" a3 (yoshi "2" a2 (yoshi "1" a1 0)))))))))
                                                      | (character == "pikachu") = pikachu "10" a10 (pikachu "9" a9 (pikachu "8" a8 (pikachu "7" a7 (pikachu "6" a6 (pikachu "5" a5 (pikachu "4" a4 (pikachu "3" a3 (pikachu "2" a2 (pikachu "1" a1 0)))))))))
                                                      | (character == "jigglypuff") = jigglypuff "10" a10 (jigglypuff "9" a9 (jigglypuff "8" a8 (jigglypuff "7" a7 (jigglypuff "6" a6 (jigglypuff "5" a5 (jigglypuff "4" a4 (jigglypuff "3" a3 (jigglypuff "2" a2 (jigglypuff "1" a1 0)))))))))
                                                      | (character == "kirby") = kirby "10" a10 (kirby "9" a9 (kirby "8" a8 (kirby "7" a7 (kirby "6" a6 (kirby "5" a5 (kirby "4" a4 (kirby "3" a3 (kirby "2" a2 (kirby "1" a1 0)))))))))
                                                      | (character == "samus") = samus "10" a10 (samus "9" a9 (samus "8" a8 (samus "7" a7 (samus "6" a6 (samus "5" a5 (samus "4" a4 (samus "3" a3 (samus "2" a2 (samus "1" a1 0)))))))))
                                                      | (character == "captain") = captain "10" a10 (captain "9" a9 (captain "8" a8 (captain "7" a7 (captain "6" a6 (captain "5" a5 (captain "4" a4 (captain "3" a3 (captain "2" a2 (captain "1" a1 0)))))))))
                                                      | (character == "luigi") = luigi "10" a10 (luigi "9" a9 (luigi "8" a8 (luigi "7" a7 (luigi "6" a6 (luigi "5" a5 (luigi "4" a4 (luigi "3" a3 (luigi "2" a2 (luigi "1" a1 0)))))))))
                                                      | (character == "link") = link "10" a10 (link "9" a9 (link "8" a8 (link "7" a7 (link "6" a6 (link "5" a5 (link "4" a4 (link "3" a3 (link "2" a2 (link "1" a1 0)))))))))
                                                      | (character == "ness") = ness "10" a10 (ness "9" a9 (ness "8" a8 (ness "7" a7 (ness "6" a6 (ness "5" a5 (ness "4" a4 (ness "3" a3 (ness "2" a2 (ness "1" a1 0)))))))))
                                                      | otherwise = 0


-- Character question/answer functions. These are used to add to the sum if the answer was the right one for that question.
fox :: String -> String -> Int -> Int
fox qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "3") = 1 + sum
                 | (qNum == "3" && ans == "3") = 1 + sum
                 | (qNum == "4" && ans == "2") = 1 + sum
                 | (qNum == "5" && ans == "2") = 1 + sum
                 | (qNum == "6" && ans == "3") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

mario :: String -> String -> Int -> Int
mario qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "1") = 1 + sum
                 | (qNum == "3" && ans == "3") = 1 + sum
                 | (qNum == "4" && ans == "2") = 1 + sum
                 | (qNum == "5" && ans == "1") = 1 + sum
                 | (qNum == "6" && ans == "2") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

luigi :: String -> String -> Int -> Int
luigi qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "2") = 1 + sum
                 | (qNum == "3" && ans == "3") = 1 + sum
                 | (qNum == "4" && ans == "4") = 1 + sum
                 | (qNum == "5" && ans == "1") = 1 + sum
                 | (qNum == "6" && ans == "2") = 1 + sum
                 | (qNum == "7" && ans == "2") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

dk :: String -> String -> Int -> Int
dk qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "3") = 1 + sum
                 | (qNum == "3" && ans == "2") = 1 + sum
                 | (qNum == "4" && ans == "4") = 1 + sum
                 | (qNum == "5" && ans == "2") = 1 + sum
                 | (qNum == "6" && ans == "4") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "2") = 1 + sum
                 | (qNum == "9" && ans == "2") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

yoshi :: String -> String -> Int -> Int
yoshi qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "2") = 1 + sum
                 | (qNum == "3" && ans == "3") = 1 + sum
                 | (qNum == "4" && ans == "4") = 1 + sum
                 | (qNum == "5" && ans == "2") = 1 + sum
                 | (qNum == "6" && ans == "1") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "2") = 1 + sum
                 | (qNum == "9" && ans == "2") = 1 + sum
                 | (qNum == "10" && ans == "2") = 100 + sum
                 | otherwise = 0

pikachu :: String -> String -> Int -> Int
pikachu qNum ans sum | (qNum == "1" && ans == "2") = 1 + sum
                 | (qNum == "2" && ans == "3") = 1 + sum
                 | (qNum == "3" && ans == "1") = 1 + sum
                 | (qNum == "4" && ans == "3") = 1 + sum
                 | (qNum == "5" && ans == "2") = 1 + sum
                 | (qNum == "6" && ans == "3") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "2") = 1 + sum
                 | (qNum == "9" && ans == "2") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

jigglypuff :: String -> String -> Int -> Int
jigglypuff qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "4") = 1 + sum
                 | (qNum == "3" && ans == "1") = 1 + sum
                 | (qNum == "4" && ans == "3") = 1 + sum
                 | (qNum == "5" && ans == "2") = 1 + sum
                 | (qNum == "6" && ans == "3") = 1 + sum
                 | (qNum == "7" && ans == "2") = 1 + sum
                 | (qNum == "8" && ans == "2") = 1 + sum
                 | (qNum == "9" && ans == "2") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

kirby :: String -> String -> Int -> Int
kirby qNum ans sum | (qNum == "1" && ans == "2") = 1 + sum
                 | (qNum == "2" && ans == "4") = 1 + sum
                 | (qNum == "3" && ans == "1") = 1 + sum
                 | (qNum == "4" && ans == "1") = 1 + sum
                 | (qNum == "5" && ans == "2") = 1 + sum
                 | (qNum == "6" && ans == "1") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "2") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

samus :: String -> String -> Int -> Int
samus qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "1") = 1 + sum
                 | (qNum == "3" && ans == "2") = 1 + sum
                 | (qNum == "4" && ans == "2") = 1 + sum
                 | (qNum == "5" && ans == "1") = 1 + sum
                 | (qNum == "6" && ans == "4") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

captain :: String -> String -> Int -> Int
captain qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "4") = 1 + sum
                 | (qNum == "3" && ans == "2") = 1 + sum
                 | (qNum == "4" && ans == "4") = 1 + sum
                 | (qNum == "5" && ans == "1") = 1 + sum
                 | (qNum == "6" && ans == "4") = 1 + sum
                 | (qNum == "7" && ans == "2") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

link :: String -> String -> Int -> Int
link qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "2") = 1 + sum
                 | (qNum == "3" && ans == "2") = 1 + sum
                 | (qNum == "4" && ans == "1") = 1 + sum
                 | (qNum == "5" && ans == "1") = 1 + sum
                 | (qNum == "6" && ans == "1") = 1 + sum
                 | (qNum == "7" && ans == "1") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

ness :: String -> String -> Int -> Int
ness qNum ans sum | (qNum == "1" && ans == "1") = 1 + sum
                 | (qNum == "2" && ans == "1") = 1 + sum
                 | (qNum == "3" && ans == "1") = 1 + sum
                 | (qNum == "4" && ans == "3") = 1 + sum
                 | (qNum == "5" && ans == "3") = 1 + sum
                 | (qNum == "6" && ans == "4") = 1 + sum
                 | (qNum == "7" && ans == "2") = 1 + sum
                 | (qNum == "8" && ans == "1") = 1 + sum
                 | (qNum == "9" && ans == "1") = 1 + sum
                 | (qNum == "10" && ans == "1") = 1 + sum
                 | otherwise = 0

-- Determines the winner based on the list given. The winner is the one with the highest associated score
findWinner :: [(String, Int)] -> String
findWinner chars = fst (List.last (List.sortBy (\(_,a) (_,b) -> compare a b) chars))

-- Determines winner picture
findWinnerPicture :: String -> String
findWinnerPicture winner | (winner == "Mario") = "/mario.gif"
                         | (winner == "Luigi") = "/luigi.jpg"
                         | (winner == "Link") = "/link.png"
                         | (winner == "Captain Falcon") = "/falcon.jpg"
                         | (winner == "Ness") = "/ness.png"
                         | (winner == "Samus") = "/samus.gif"
                         | (winner == "Fox") = "/fox.png"
                         | (winner == "Yoshi") = "/yoshitaxfraud.png"
                         | (winner == "Donkey Kong") = "/dk.png"
                         | (winner == "Pikachu") = "/pikachu.jpg"
                         | (winner == "Jigglypuff") = "/jig.png"
                         | (winner == "Kirby") = "/kirby.jpg"
                         | otherwise = winner

-- Reads file from given file path and returns the contents as IO Text
loadFileToText :: String -> IO Text
loadFileToText file = do
    fileString <- readFile file
    return (fromString fileString)

-- Perform a string replace and return contents as IO Text
fileStringReplace :: String -> String -> Text -> IO Text
fileStringReplace oldPat newPat source = do
    return (fromString (replace oldPat newPat (L.unpack source)))
