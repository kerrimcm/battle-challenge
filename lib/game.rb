require_relative 'player'

class Game
  attr_reader :player_one, :player_two
  def initialize(player_one_name, player_two_name, player = Player)
    @player_one = player.new(player_one_name)
    @player_two = player.new(player_two_name)
  end

  def attack(player)
    player.receive_damage
  end
end