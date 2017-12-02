require_relative 'guess'

class GameManager

  attr_reader :guess_manager, :color_correct, :correct_position
  attr_accessor :answer

  def initialize
    @answer           = []
    @guess_manager    = Guesses.new
    @previous_guesses = []
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
    compare.select do |color|
      answer.include?(color)
        if color >= 2
          compare.pop
        end
        # once we get that there is a color that matches from the guess array
        # to the answer array we don't want to ???
        # require "pry"; binding.pry
    end.length
  end

  def position_check
    compare = @guess_manager.guesses.last.zip(answer)
    compare.map do |comparison|
      if comparison.first == comparison.last
        "O"
      else
        "X"
      end
    end


    # compare = guess_getter(@guess)[@guess.guess_counter - 1].zip(answer)
      # compare.map do |guess, answer|
      #   if guess == answer
      #     @correct_position += 1


      # I want to compare the value of each index against the value of
      # each index in the "answer". Right now I just have the each_with_index
      # enumerating over the guess.
      # map .with_index ?
      # I could either contain all of that in this one method...or I could
      # make two different methods and then the input_check method could
      # combine the two methods and compare the results???

      # I think I'm going to try to do the latter and seperate..
    # end
    # if guess_getter(@guess)[@guess.guess_counter - 1].to_s == answer.join
    #   return "Correct"
    # else return "InCorrect"
    # end
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
