class Question
  attr_accessor :answer, :question

  def initialize
    # add plus 1 because adding 0 in a question is too easy!
    @num1 = rand(10) + 1
    @num2 = rand(10) + 1
    @answer = @num1 + @num2
    @question = "What is #{@num1} + #{@num2} equal to?"
  end

end