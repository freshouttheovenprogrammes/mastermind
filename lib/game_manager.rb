require_relative 'guess_manager'

class GameManager

  attr_reader :guess_manager,
              :color_correct,
              :position_counter,
              :color_correct,
              :answer
  # attr_accessor :answer

  def initialize
    @answer           = []
    @guess_manager    = GuessManager.new
    @position_counter = 0
    @color_correct    = 0
  end

  def start_time
    Time.now
  end

  def end_time
    Time.now
  end

  def elapsed_time(start_time, end_time)
    # require "pry"; binding.pry
    end_time - start_time#.strftime(":%s")
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

  def guess_compare
    @guess_manager.guesses.last
  end

  def color_check
    @color_correct = 0
    guess_compare.select do |color|
      if answer.include?(color)
        @color_correct += 1
      end
    end
    return @color_correct
  end
  # reduce?

  def compare
    @guess_manager.guesses.last.zip(answer)
  end

  def position_check
    @position_counter = 0
    compare.map do |comparison|
      if comparison.first == comparison.last
        @position_counter += 1
      end
    end
    # return compare[0] # < THIS IS TO GET TEST WORKING
    return @position_counter# < KEEP THIS
  end

end
#
# gm = GameManager.new
# gm.secret_generator
# gm.guess_manager.user_input("heya")
# gm.position_check
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
