require './player'

class Game 

  attr_reader :players, :current_player, :report_lifes

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else 
      @current_player = @players[0]
    end
  end

  def remove_life
    @current_player.lifes -= 1
    if @current_player.lifes == 0
      puts "Oh no, you are dead. Better luck next time #{@current_player.name}!"
    end
  end

  def report_lifes 
    puts "Remaining lifes:  #{@players[0].name} - #{@players[0].lifes}/3, #{@players[1].name} - #{@players[1].lifes}/3"
  end

end

