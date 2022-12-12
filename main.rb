
require './classes/player'

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