class GameManager

  attr_reader :guess_counter, :guesses, :answer

  def initialize
    @guess_counter = 0
    @guesses       = guesses
    @answer        = answer
  end

  def colors
    ["Red", "Green", "Blue", "Yellow"]
  end

  def computer_selection
    colors.shuffle
  end

  def user_input(input)
    guesses << input
    counter_adder
  end

  def counter_adder
    @guess_counter += 1
  end

end
