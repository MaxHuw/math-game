class Turn
  
  attr_reader :current_player, :round

  def initialize current_player, round
    @current_player = current_player
    @round = round
  end

end
