require_relative 'player'

class Game
  attr_reader :player_one, :player_two, :player_one_turn
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @player_one_turn = true
  end

  def self.create(game)
    @game = game
  end

  def self.load
    @game
  end

  def attack
    self.defender.receive_damage
  end

  def attacker
    @player_one_turn ? @player_one : @player_two
  end 

  def defender
    @player_one_turn ? @player_two : @player_one
  end

  def change_turn
    @player_one_turn = !@player_one_turn
  end 

  def lost?
    self.defender.hit_points <= 0
  end
end