class Game

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
    @current_round = 0

    random_player = rand(1..10)
    if random_player <= 5
      random_player = 1
    else
      random_player = 2
    end

    @current_player = random_player

  end
