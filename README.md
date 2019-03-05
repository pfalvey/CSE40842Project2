# Smash-kell
For CSE 40842 project 2

This is a web service/application built in Haskell using the framework [Scotty](https://github.com/scotty-web/scotty). Our application is a questionnaire to determine which original Super Smash Bros character you should be (similar to a Buzzfeed quiz). The application can be accessed as a RESTful API, however accessing it in a browser is the quickest and easiest way. 

We use Haskell which employs the functional programming paradigm. We are able to use this to help support our web-server and to generate user's answers.

In order to run the program you must first install cabal and haskell on your respective opporating system. 
* on Ubuntu, `sudo apt-get install haskell-platform`

Next, we have created a cabal sanbox within the `server` directory and have uploaded the sandbox configuration files. You will need to configure your own sandbox which you might be able to do in this directory. To set up the sandbox, follow the instructions on how to create a new cabal sandbox and install the dependencies from this link: [CLICK HERE FOR INSTRUCTIONS](https://dev.to/parambirs/how-to-write-a-haskell-web-servicefrom-scratch---part-3-5en6). Some differences between the instructions from the link and our server is that instead of a `scotty-webapp-example` directory name we use `server`. We also specified our executable as `server`, our main file as `server.hs`, and our port as 80.

Our server is designed to run on port 80 (HTTP). To start the quiz, start the server (`sudo cabal run`) and visit http://[your.ip.address]/.
