class Question
  attr_reader :correct_result

  def initialize(current_player)
    @variable_one = rand(1...20)
    @variable_two = rand(1...20)
    @answer = @variable_one + @variable_two

    @question = "What does #{@variable_one} plus #{@variable_two} equal?"

    puts "#{current_player.name}: #{@question}"

    get_answer
  end

  def get_answer
    @guess = gets.chomp

    if @guess == @answer.to_s
      puts "You are correct!"
      @correct_result = true

    else
      puts "You are incorrect."
      @correct_result = false
    end
  end

end

