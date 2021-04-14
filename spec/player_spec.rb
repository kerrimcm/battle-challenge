require 'player'

describe Player do
  subject(:player) { described_class.new('player') }

  context '#name' do
    it 'should return a name' do
      expect(player.name).to eq 'player'
    end 
  end 

#   context '#hit_points' do

#   end 
end 