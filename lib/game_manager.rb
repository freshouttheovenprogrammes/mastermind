class GameManager

  attr_reader :guess_counter, :guesses, :answer

  def initialize(answer = ["r", "g", "b", "y"])
    @guess_counter = 0
    @guesses       = guesses
    @answer        = answer
  end

  def colors
    ["r", "r", "r", "r", "g", "g", "g", "g", "b", "b", "b", "b", "y", "y", "y", "y"]
  end

  def game_start
    answer << computer_selection
  end

  def computer_selection
    colors.shuffle.sample(4)
  end

  def user_input(input)
    guesses += input.split("")
    counter_adder
  end

  def input_check
    if guesses[guess_counter] == answer.join
       "Correct"
    else "Incorrect, try again!"
    end
  end

  def counter_adder
    @guess_counter += 1
  end

end
