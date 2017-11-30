class Guess

  attr_reader :guesses, :guess_counter

  def initialize
    @guesses = []
    @guess_counter = 0
  end

  def user_input(input)
    @guesses << input
    @guess_counter += 1
  end

end
