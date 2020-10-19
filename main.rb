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
  
  # add horizontal line to make turn outputs more readable
  puts "----"
  
  # ask current player question
  puts "#{player.name}: #{question.question}"

  # get answer
  answer = gets.chomp.to_i

  # check answer for correctness
  if answer == question.answer
    puts 'Correct!'
  else
    puts 'Incorrect!'
    player.lives -= 1
  end

   # add horizontal line to make turn outputs more readable
   puts "----Lives Remaining---"

  # display current lives count for players
  puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"

  # switch players
  current_player = (current_player + 1) % 2

  
  # temporary to prevent infinite loop
  # player1.lives = 0
end

# declare winner
if player1.lives == 0
  puts "#{player2.name} is the winner!"
else player2.lives == 0
  puts "#{player1.name} is the winner!"
end