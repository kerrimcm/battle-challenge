require 'game'

describe Game do
  let(:p2) { double :p2 }
  describe '#attack' do 
    it 'responds to attack' do
      expect(subject).to respond_to :attack
    end

    it 'player 2 calls receive_damage' do
      allow(p2).to receive(:receive_damage)
      expect(p2).to receive(:receive_damage) 
      subject.attack(p2)
    end
  end
end