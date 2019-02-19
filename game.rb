# require('./player')
# require('./turn_manager')
# require('./question')

require_relative './player'
require_relative './turn_manager'
require_relative './question'



class Game
 
  def initialize
    @players = [
      Player.new('P1'),
      Player.new('P2')
    ]

    @turn_manager = TurnManager.new(@players)

  end

  def play

    while (not game_over?) do

      turn = @turn_manager.next_turn

      puts ""
      puts "==== Round ##{turn.round} ===="
      puts ""

      #turn logic here
      question = Question.new(turn.current_player)
      # Ask the question for the current player

      if question.correct_result
        print_summary
      else
        turn.current_player.wrong_answer
        print_summary
      end
     
      sleep 0.5

    end

  end_game_summary


  end

  def game_over?
    active_players.count == 1
  end

  def active_players
    @players.select {|r| not r.lost?}
  end
  
  def print_summary
    puts ""
    puts "==== Summary ===="
    @players.each do |r|
      puts r.summary
    end
    puts ""
  end

  def end_game_summary
    winner = active_players[0]

    puts ""
    puts "Game Over!"
    puts "#{winner.name} Wins!"
    puts "You are the math master!"
  end


end



# class Game
 
#   def play

#     puts "Round 1"

#   end

# end