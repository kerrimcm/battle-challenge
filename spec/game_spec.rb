require 'game'

describe Game do
  let(:p1) { double :player, :receive_damage => true }
  let(:p2) { double :player, :receive_damage => true }
  let(:game) { described_class.new(p1, p2) }

  describe '#initialize' do 
    it 'creates instances of players' do
      expect(game.player_one).to eq p1
    end

    it 'starts off with player one turn' do
      expect(game.player_one_turn).to be true
    end 
  end
  
  describe '#attack' do
    it 'player 2 calls receive_damage' do
      expect(p2).to receive(:receive_damage) 
      game.attack
    end

    it 'on second go, player 1 receives damage' do
      game.change_turn
      expect(p1).to receive(:receive_damage)
      game.attack
    end 
  end

  describe '#attacker' do
    it 'p1 starts out as attacker' do
      expect(game.attacker).to eq game.player_one
    end

    it 'then it is the turn of p2' do
      game.change_turn
      expect(game.attacker).to eq game.player_two
    end 
  end 

  describe '#defender' do
    it 'p2 starts out as defender' do
      expect(game.defender).to eq game.player_two
    end 

    it 'then it is the turn of p1' do
      game.change_turn
      expect(game.defender).to eq game.player_one
    end 
  end 

  describe '#change_turn' do
    it 'changes turns of players with p1 going first' do
      game.change_turn
      expect(game.player_one_turn).to be false
    end 
  end 
end