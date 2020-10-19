require './questions.rb'
require './players.rb'

# create players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

# set current player
current_player = 1

# game loop while both players are alive
while (player1.is_alive? && player2.is_alive?) do
  
  # determine current player
  player = (current_player == 1) ? player1 : player2
  
  # get question
  question = Question.new
  puts question.question

  # temporary to prevent infinite loop
  player1.lives = 0
end