class Game

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
    @current_round = 0
    @current_round_answer = 0
    @current_question = 0

    random_player = rand(1..10)
    if random_player <= 5
      random_player = 1
    else
      random_player = 2
    end

    @current_player = random_player

  end

  def get_answer
    puts "Current question is: " 
    puts @current_question
    puts "Please enter your answer: "
    player_answer = gets.chomp.to_i
    puts "Player answer is: "
    puts player_answer
    puts " and..."

    if player_answer == @current_round_answer
      puts "You're correct!"
    else
      puts "You're wrong!"
      puts "Answer is: "
      puts @current_round_answer
    end 
  end

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    which_operator = rand(1..4)
    problem = 0

    # generates problem type based on random selection
    if which_operator == 1
      problem = "#{num1} + #{num2}"
      answer = num1 + num2
    elsif which_operator == 2
      problem = "#{num1} - #{num2}"
      answer = num1 - num2
    elsif which_operator == 3
      problem = "#{num1} * #{num2}"
      answer = num1 * num2
    else
      problem = "#{num1} / #{num2}"
      answer = num1 / num2
    end


    puts "problem: " 
    puts problem
    puts "answer: "
    puts answer

  end

  def game_loop
    while (player_one.lives > 0 && player_two.lives > 0) do
      self.generate_question



    end
  end


end

new_game = Game.new('guy', 'man')

pp new_game

new_game.get_answer

new_game.generate_question