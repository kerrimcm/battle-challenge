require 'player'

describe Player do
  subject(:jason) { described_class.new('Jason') }
  subject(:kerri) { described_class.new('Kerri') }

  context '#name' do
    it 'should return a name' do
      expect(jason.name).to eq 'Jason'
    end 
  end 

  context '#hit_points' do
    it 'returns the HP' do
      expect(jason.hit_points).to eq Player::BASE_HP 
    end 
  end 

  context '#receive_damage' do
    it 'reduces the player HP by 10' do
      expect { jason.receive_damage }.to change { jason.hit_points }.by(-10)
    end 
  end 
end 