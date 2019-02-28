# Smash-kell
For CSE 40842 project 2

This is a web service build in Haskell using the framework [Scotty](https://github.com/scotty-web/scotty). It provides a RESTful API that is a questionnaire to determine which original Super Smash Bros character you should be (similar to a Buzzfeed quiz).

We use Haskell which employs the functional programming paradigm. We are able to use this to help support our web-server and to generate user's answers.

In order to run the program you must first install cabal and haskell. Next, follow the instructions on how to create a cabal sandbox and install the dependencies from this link: [CLICK HERE FOR INSTRUCTIONS](https://dev.to/parambirs/how-to-write-a-haskell-web-servicefrom-scratch---part-3-5en6). Some differences between the instructions from the link and our server is that instead of a `scotty-webapp-example` directory name we use `server`. We also specified our executable as `server` and our main file as `server.hs`.

Our server is designed to run on port 80 (HTTP). To start the quiz, visit http://[your.ip.address]/help.
