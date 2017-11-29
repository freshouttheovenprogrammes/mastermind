class GameManager

  attr_reader :guess_counter

  def initialize
    @guess_counter = 0
  end

  def colors
    ["Red", "Green", "Blue", "Yellow"]
  end

  def computer_selection
    colors.shuffle
  end

  def user_input(input)
    counter_adder
  end

  def counter_adder
    @guess_counter += 1
  end

end
