class Question
  attr_accessor :problem, :answer

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    which_operator = rand(1..4)

    # generates problem type based on random selection
    if which_operator == 1
      @problem = "#{num1} + #{num2}"
      @answer = num1 + num2
    elsif which_operator == 2
      @problem = "#{num1} - #{num2}"
      @answer = num1 - num2
    elsif which_operator == 3
      @problem = "#{num1} * #{num2}"
      @answer = num1 * num2
    else
      @problem = "#{num1} / #{num2}"
      @answer = num1 / num2
    end
  end

end

# new_question = Question.new()

# puts new_question.problem
# puts new_question.answer