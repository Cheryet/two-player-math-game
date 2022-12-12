#Class for a new player

class Player 
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lifes = 3
  end
end