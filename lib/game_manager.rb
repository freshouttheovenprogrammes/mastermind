require_relative 'guess_manager'

class GameManager

  attr_reader :guess_manager,
              :color_correct,
              :position_counter
  attr_accessor :answer

  def initialize
    @answer           = []
    @guess_manager    = GuessManager.new
    @position_counter = 0
    # @previous_guesses = []
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

  def color_check
    compare = @guess_manager.guesses.last
    compare.select do |color|
      answer.include?(color)
    end.uniq.length
  end

  def position_check
    compare = @guess_manager.guesses.last.zip(answer)
    compare.map do |comparison|
      if comparison.first == comparison.last
        @position_counter += 1
      else
        "X"
      end
    end
  end

end
