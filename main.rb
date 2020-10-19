require './questions.rb'
require './players.rb'

# create players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

# set current player
current_player = 1

# game loop while both players are alive
while (player1.is_alive? && player2.is_alive?) do
  puts player1.lives
  puts player2.lives
  player1.lives -= 1
  player2.lives -= 1
end