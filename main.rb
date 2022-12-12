# ~ Requires ~
require './player'
require './game'
require './question'

# ~ Math Game ~

# Set up Player names
print 'Please enter Player 1 name:'
player1_name = gets.chomp
print 'Please enter Player 2 name:'
player2_name = gets.chomp

#Create players objects
player1 = Player.new(player1_name)
player2 = Player.new(player2_name)

#Confirm players object is populating
# p player1
# p player2

# Start new Game
new_game = Game.new(player1, player2)

# p new_game

# Game Logic
while new_game.players[0].lifes > 0 and new_game.players[1].lifes > 0 do
  question = Questions.new

  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "#{new_game.current_player.name}'s turn!"
  print "#{question.new_question}"
  
  answer = question.answer
  player_answer = gets.chomp.to_i

  if player_answer != answer
    puts "Whoops! That wasn't right"
    new_game.remove_life
  else
    puts 'Correct!'
  end


  new_game.report_lifes

  new_game.change_player

end



