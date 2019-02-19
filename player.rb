class Player
  
  attr_reader :name, :lives

  NUMBER_OF_LIVES = 3

  def initialize name
    @name = name
    @lives = NUMBER_OF_LIVES
  end

  def wrong_answer
    @lives -= 1
  end
  
  def summary
    "#{@name}: #{@lives}/#{NUMBER_OF_LIVES}"
  end

  def lost?
    @lives == 0
  end
end
