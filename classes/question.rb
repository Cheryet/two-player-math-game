
class questions

  def initialize
    @answer
  end

  def new_question
    num1 = rand(1..10)
    num2 = rand(1..10)
    @answer = num1 + num2
    puts "What is the answer to #{num1} plus #{num2}?"
end