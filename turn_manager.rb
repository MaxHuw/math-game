require_relative './turn'

class TurnManager
  def initialize players
    @players = players.dup
    @round_number = 0
    @current_index = 0
  end

  def next_turn
    current_player = @players[@current_index]

    increment_turn

    Turn.new(current_player, @round_number)
  end

  private
  
  def increment_turn
    @round_number += 1
    @current_index = (@current_index + 1) % @players.count
  end
end
