require_relative 'player'

class Game
  attr_reader :player_one, :player_two, :player_one_turn
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @player_one_turn = true
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
end