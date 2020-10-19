require './questions.rb'
require './players.rb'

# create players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

puts player1.name
puts player1.lives
puts player2.name
puts player2.lives