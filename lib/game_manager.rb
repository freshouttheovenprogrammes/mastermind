class GameManager

  attr_reader :guess_counter, :guesses, :answer

  def initialize
    @answer = []
  end

  def colors
    ["r", "r", "r", "r", "g", "g", "g", "g", "b", "b", "b", "b", "y", "y", "y", "y"]
  end

  def secret_generator
    answer << computer_selection
  end

  def computer_selection
    colors.shuffle.sample(4)
  end

  def input_check
    if guesses[guess_counter - 1].to_s == answer.join
       "Correct"
    else "Incorrect, try again!"
    end
  end

  def counter_adder
    @guess_counter += 1
  end

end
