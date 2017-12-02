class GuessManager

  attr_reader :guesses, :guess_counter

  def initialize
    @guesses = []
    @guess_counter = 0
  end

  def user_input(input)
    @guesses << input.downcase.split("")
    @guess_counter += 1
    # counter = 0
    # counter_2 = 0
  end


end
