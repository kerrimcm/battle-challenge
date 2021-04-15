require 'game'

describe Game do
  let(:p2) { double :p2 }
  let(:player_double) { double :player }
  let(:game) { described_class.new('player_one', 'player_two', player_double) }

  before do
    allow(player_double).to receive(:new).and_return "Player created"
  end

  describe '#initialize' do 
    it 'creates instances of the player class' do
      expect(game.player_one).to eq "Player created"
    end
  end
  
  describe '#attack' do 
    it 'responds to attack' do
      expect(game).to respond_to :attack
    end

    it 'player 2 calls receive_damage' do
      allow(p2).to receive(:receive_damage)
      expect(p2).to receive(:receive_damage) 
      game.attack(p2)
    end
  end
end