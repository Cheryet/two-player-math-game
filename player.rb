#Class for a new player

class Player 
  attr_accessor :name, :lifes

  def initialize(name)
    @name = name
    @lifes = 3
  end
end