class GuessManager

  attr_reader :guesses

  def initialize
    @guesses = []
  end

  def user_input(input)
    @guesses << input.downcase.split("")
    # counter = 0
    # counter_2 = 0
  end


end
