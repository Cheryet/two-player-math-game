require './player'

class Game 

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  