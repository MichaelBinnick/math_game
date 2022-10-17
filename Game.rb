require_relative "Question" 
require_relative "Player"

class Game
  
  def initialize
    
    @player_one = Player.new('Bob')
    @player_two = Player.new('Potato')
    random_player = rand(1..10)
    if random_player <= 5
      @current_player = @player_one
    else
      @current_player = @player_two
    end
  end

  def game_loop

    while (@player_one.lives > 0 && @player_two.lives > 0) do
      
      # New round
      puts "----- NEW TURN ------"

      # Create a new Question instance
      current_question = Question.new

      # Output question to current player
      puts "Player #{@current_player.name}, what is the answer to #{current_question.problem}?"
      
      # Ask current player for input for answer
      player_answer = gets.chomp.to_i

      # Give answer feedback
      if player_answer == current_question.answer
        puts "Player #{@current_player.name}...Good job! #{player_answer} is correct!"
      else
        puts "Player #{@current_player.name}...Wrong! You lose a life!"
        @current_player.lives -= 1
      end

      # Output score
      puts "#{@player_one.name}: #{@player_one.lives}/3 vs #{@player_two.name}: #{@player_two.lives}/3"
      
      # Switch active player
      if @current_player == @player_one
        @current_player = @player_two
      else
        @current_player = @player_one
      end
    end

    # After game loop ends, determine winner
    if @player_one.lives == 0
      winner = @player_two
    else
      winner = @player_one
    end

    # Output winner message
    puts "Player #{winner.name} wins with a score of #{winner.lives}/3!"
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end

end

