require_relative 'guess_manager'

class GameManager

  attr_reader :guess_manager,
              :color_correct,
              :position_counter,
              :color_correct
  attr_accessor :answer

  def initialize
    @answer           = []
    @guess_manager    = GuessManager.new
    @position_counter = 0
    @color_correct    = 0
  end

  def colors
    ["r", "r", "r", "r", "g", "g", "g", "g", "b", "b", "b", "b", "y", "y", "y", "y"]
  end

  def secret_generator
    @answer = computer_selection
  end

  def computer_selection
    colors.shuffle.sample(4)
  end

  def color_check
    compare = @guess_manager.guesses.last
    @color_correct = 0
    compare.select do |color|
      if answer.include?(color)
        @color_correct += 1
      end
    end.uniq
    return @color_correct
  end

  def position_check
    compare = @guess_manager.guesses.last.zip(answer)
    @position_counter = 0
    compare.map do |comparison|
      if comparison.first == comparison.last
        @position_counter += 1
      end
    end
    return @position_counter
  end

end
# guess = Guess.new
# thing = GameManager.new
# thing.guess_getter(guess)
# thing.secret_generator
# guess.user_input
# thing.input_check
# require "pry"; binding.pry
=begin
#If an exact match, then update num correct.  If not, but the color is
            #correct, then update the number of colors correct.
            if val == @code.split("")[index] then
                @num_correct += 1
            elsif @code.include?(val)
                @num_color_correct += 1
            end
=end

=begin
  TO DO
  create enum functionality
  have prompt that can
  make guess container?
=end
#
# array1.each_with_index do |number, index|
#   array2.each_with_index do |n, i|
