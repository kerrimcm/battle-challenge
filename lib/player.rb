class Player
  attr_reader :name
  def initialize(name, base_hp)
    @name = name
    @base_hp = 100
  end

  # def attack
    
  # end

  def reduce
    @base_hp -= 10
  end
end 