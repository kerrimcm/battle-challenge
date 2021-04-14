require 'player'

describe Player do
  subject(:jason) { described_class.new('jason', base_hp) }

  context '#name' do
    it 'should return a name' do
      expect(jason.name).to eq 'jason'
    end 
  end 

  context '#attack' do
    it 'reduces the hp players by 10' do
      expect { jason.reduce }.to change { jason.base_hp }.by(-10)
    end
  end 
end 