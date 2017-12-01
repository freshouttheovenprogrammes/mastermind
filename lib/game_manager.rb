require_relative 'guess'

class GameManager

  attr_reader :guess_class, :guess
  attr_accessor :answer

  def initialize
    @answer = []
    @guess  = Guess.new
    @color_correct = 0
    @correct_position = 0
  end

  def guess_getter(guess_class)
    guess_class.guesses
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

  def input_check
    guess_getter(@guess)[@guess.guess_counter - 1].each_with_index do |color, i|
      if color == @answer[i]
        @correct_position += 1
      elsif @answer.include?(color)
        @color_correct += 1
      end  


      # I want to compare the value of each index against the value of
      # each index in the "answer". Right now I just have the each_with_index
      # enumerating over the guess.
      # map .with_index ?
      # I could either contain all of that in this one method...or I could
      # make two different methods and then the input_check method could
      # combine the two methods and compare the results???

      # I think I'm going to try to do the latter and seperate..
    end
    # if guess_getter(@guess)[@guess.guess_counter - 1].to_s == answer.join
    #   return "Correct"
    # else return "InCorrect"
    # end
  end

end

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

=end
