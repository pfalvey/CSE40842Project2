The goal of Smashkell is to help new players to Super Smash Bros. choose a character
based on their answers to our quiz. Smashkell is a web questionnaire service written in Haskell
that utilizes the web framework Scotty to handle requests. To start the server, run the command:
`sudo cabal run`

Next, connect to the server using a standard web browser. For our demo, the host's
IP address is 18.220.156.50. Going to this address will take you to the start page 
for our quiz. Simply press the start button to begin.

This project takes advantage of monads like the IO monad. We used this monad to work with our
functions that required reading from files as well as manipulation of the contents of those files.

Monads like IO allow us to keep pure functions while supplementing them with not necessarily pure 
features like IO. Effectively, monads act like identifiers/wrappers that encapsulate the pure
functions. According to wiki.haskell.org, this effectively means that "side effects that will be
performed by a computation can be dealt with and combined purely at the monad's composition time."
Another useful effect of monads is grouping related functions to make the interactions between
them remain simple despite the wrappers.
