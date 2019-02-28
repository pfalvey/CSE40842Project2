{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import Network.HTTP.Types



main = scotty 80 $ do
    get "/" $ do                         -- handle GET request on "/" URL
        html "To start please visit <a href=\"http://18.220.156.50/help\">Start Here!</a>"    -- send 'text/html' response
    delete "/" $ do
        text "This was a DELETE request!"  -- send 'text'/plain' response
    post "/" $ do
        html "This was a POST request!"
    put "/" $ do
        html "This was a PUT request!"

    get "/help" $ do -- help page!
        html "Howdy! Welcome to our questionnaire! In here we will ask you 10 questions to determine which character of the \
        \original Super Smash Bros you should use!<br><br>\
        \ In order to start, please submit a username via a <b>PUT</b> request to <b>http://[insert.IP.address]/user/$USER</b> where $USER is a username you choose.\
        \<br><br>After submitting your username, you can visit each question. In order to visit each question, please type in the following endpoint URL:\
        \<br>http://[insert.IP.address]/questions/$question_id<br>In this case, the question ID's are simply 1-10. So an example would be \
        \<b>http://18.220.156.50/questions/1</b> to visit the first question. There will also be links to the next and previous question on the page.\
        \<br><br>In order to submit your answers please submit a <b>PUT</b> request to the following URL:<br>\
        \<b>http://[insert.IP.address]/responses/$USER/$question_id/$response_number/</b><br>\
        \For the above link, $USER is the username you submitted, $question_id is the question number you're answering, and $response_number is\
        \ the number corresponding to the answer you choose.<br><b>You must submit a number as your answer.</b><br>\
        \<br>To view your results visit the following URL: <b>http://[insert.IP.address]/results/$USER/</b>.<br><br>\
        \And that's it! To begin, submit your <b>PUT</b> request for your username and then visit the first question!\
        \<br><br><b><a href=\"http://18.220.156.50/questions/1\">Click Here for Question 1!</a></b>"

    --username endpoint
    put "/user/:user" $ do
        username <- param "user"
        html $ mconcat ["Username set as: ", username]


    -- questions endpoints
    get "/questions/1" $ do
        html "Do you actually want to win?<br>1: I’m just here for a good time.<br>2: Yes. Three stock, No items, Fox only, Final Destination\
        \<br><a href=\"http://18.220.156.50/questions/2\">next question</a>"
    get "/questions/2" $ do
        html "What’s your favorite color?<br>1: Red<br>2: Green<br>3: Yellow<br>4: No those are basic\
        \<br><a href=\"http://18.220.156.50/questions/1\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/3\">next question</a>"
    get "/questions/3" $ do
        html "Manny Pacquiao or Floyd “Money” Mayweather?<br>1: Waka waka<br>2: Money<br>3: Neither. I prefer my Golden Boy, Oscar De La Hoya\
        \<br><a href=\"http://18.220.156.50/questions/2\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/4\">next question</a>"
    get "/questions/4" $ do
        html "Weapon of choice?<br>1: Swords<br>2: *Pew pew*<br>3: Abra Kadabra Alakazam<br>4: Naw I hit with my fists\
        \<br><a href=\"http://18.220.156.50/questions/3\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/5\">next question</a>"
    get "/questions/5" $ do
        html "Are you a furry?<br>1: No I prefer the human touch<br>2: *lowers head in shame*<br>3: Prefer not to answer\
        \<br><a href=\"http://18.220.156.50/questions/4\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/6\">next question</a>"
    get "/questions/6" $ do
        html "What do you like to eat?<br>1: Everyone and everything<br>2: Lasagna<br>3: Pellets<br>4: Other\
        \<br><a href=\"http://18.220.156.50/questions/5\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/7\">next question</a>"
    get "/questions/7" $ do
        html "Would you be first in the fight or wait until the right moment?<br>1: First<br>2: Wait\
        \<br><a href=\"http://18.220.156.50/questions/6\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/8\">next question</a>"
    get "/questions/8" $ do
        html "Do you like headgear?<br>1: Yes<br>2: No\
        \<br><a href=\"http://18.220.156.50/questions/7\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/9\">next question</a>"
    get "/questions/9" $ do
        html "Should you wear pants?<br>1: Yes<br>2: No\
        \<br><a href=\"http://18.220.156.50/questions/8\">prev question</a>&emsp;<a href=\"http://18.220.156.50/questions/10\">next question</a>"
    get "/questions/10" $ do
        html "Did you commit tax fraud? <br>1: YOSHI! (NO WAY!)<br>2: YOSHI! (maybe...)\
        \<br><a href=\"http://18.220.156.50/questions/9\">prev question</a>"


    -- put requests for the answers
    put "/responses/:USER/1/:response_number" $ do
        user1 <- param "USER"
        resp1 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user1, "'s response to question 1 was ", resp1]
    put "/responses/:USER/2/:response_number" $ do
        user2 <- param "USER"
        resp2 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user2, "'s response to question 2 was ", resp2]
    put "/responses/:USER/3/:response_number" $ do
        user3 <- param "USER"
        resp3 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user3, "'s response to question 3 was ", resp3]
    put "/responses/:USER/4/:response_number" $ do
        user4 <- param "USER"
        resp4 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user4, "'s response to question 4 was ", resp4]
    put "/responses/:USER/5/:response_number" $ do
        user5 <- param "USER"
        resp5 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user5, "'s response to question 5 was ", resp5]
    put "/responses/:USER/6/:response_number" $ do
        user6 <- param "USER"
        resp6 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user6, "'s response to question 6 was ", resp6]
    put "/responses/:USER/7/:response_number" $ do
        user7 <- param "USER"
        resp7 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user7, "'s response to question 7 was ", resp7]
    put "/responses/:USER/8/:response_number" $ do
        user8 <- param "USER"
        resp8 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user8, "'s response to question 8 was ", resp8]
    put "/responses/:USER/9/:response_number" $ do
        user9 <- param "USER"
        resp9 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user9, "'s response to question 9 was ", resp9]
    put "/responses/:USER/10/:response_number" $ do
        user10 <- param "USER"
        resp10 <- param "response_number"
        --add code below

        --add code above
        html $ mconcat [user10, "'s response to question 10 was ", resp10]
