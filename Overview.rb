# Two players take turns answering simple math questions
# math question generated each round by picking two numbers between 1 and 20
# player whose turn it is is prompted and enters input to answer
# incorrect answer, they lose a life
# correct answer, feedback, next player's turn
# both players start with 3 lives
# at the end of each turn game outputs score for both players
# game ends once lives reaches 0 for a player
# game announces who won, and the scores again


# Game Nouns

Player
# tracks player statistics

# Holds lives attribute
# Holds name attribute


Game
# Holds game state information and methods to advance rounds

# Holds current_player attribute
# Holds current_round attribute

# Holds game_loop method(s)
  # Holds execute_round method
  # ???Tick up current_round???
  # Create an instance of Round(current_player, current_round)
  # Run execute_round on that instance
  
  
Round
# Generates problems, takes in user I/O, and determines answers

# Holds generate_problem method
# Holds correct_answer attribute (i.e. correct_answer = 5 + 15)
# Holds get_answer method (takes in user input)
# Holds player_answer attribute (is user input)
# Holds check_answer method (checks player_answer against correct_answer)
# Holds correct? attribute
# Holds answer_feedback method (right/wrong)
# method output_score: P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3