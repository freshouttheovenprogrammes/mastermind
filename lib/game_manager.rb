require_relative 'guess'

class GameManager

  attr_reader :guess_class
  attr_accessor :answer

  def initialize
    @answer = []
    @guess  = Guess.new
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
    if guess_getter(@guess)[@guess.guess_counter - 1].to_s != answer.join
      "Incorrect, try again!"
    else "Correct"
    end
  end

end
