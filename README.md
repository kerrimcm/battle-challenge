# Battle Challenge

## Introduction to building simple webapps in Week 3 of Makers

Now, with a basic understanding of HTTP, response-request mechanisms, Sinatra, and Capybara, we embark on creating a Pokemon-style battle game where two players enter a fight to attack eachother. 

## Progress so far

Wednesday: By the end of the day, we've extracted the logic into a Model Player class to store variables like player names and HP. 

Thursday: with hit points now successfully implemented in the Player class, in order not to violate the Single Responsibility Principle, we extract anything to do with game play (currently only 'attack' method) into another class called Game. We then slimmed down the controllers in `app.rb` to make `Game.new` accept two instances of `Player`, finally moving onto allowing the players to take turns which is still a WIP. 
