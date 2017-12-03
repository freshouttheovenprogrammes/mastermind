class GuessManager

  attr_reader :guesses

  def initialize
    @guesses = []
  end

  def user_input(input)
    @guesses << input.downcase.split("")
  end


end
