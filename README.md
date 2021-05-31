# Battle Challenge

## Introduction to building simple webapps in Week 3 of Makers

Now, with a basic understanding of HTTP, the request-response cycle, Sinatra, and Capybara, we aim to create a Pokémon-style battle game where two players enter a fight to launch attacks at one another.

## Progress so far

Wednesday: By the end of the day, we've extracted the logic into a Model Player class to store variables like player names and HP. 

Thursday: with hit points now successfully implemented in the Player class, in order not to violate the Single Responsibility Principle, we extract anything to do with game play (currently only 'attack' method) into another class called Game. We then slimmed down the controllers in `app.rb` to make `Game.new` accept two instances of `Player`, finally moving on to allowing the players to take turns which is still a WIP. 

Friday: finished the final challenge by the end of Friday where I "killed" the use of a global variable and the game now displays a message to tell you who won and who lost (the person who reached 0HP first).

## How to play Battle!

1. Clone this repository
2. `cd` into the cloned directory
3. Run `bundle` to install dependencies
4. Run `rackup`
5. Navigate to http://localhost:9292/ in your browser
