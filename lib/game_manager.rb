require_relative 'guess_manager'

class GameManager
  attr_reader :guess_manager,
              :color_correct,
              :position_counter,
              :color_correct,
              :answer

  def initialize
    @answer           = []
    @guess_manager    = GuessManager.new
    @position_counter = 0
    @color_correct    = 0
  end

  def colors
    ["r", "g", "b", "y"]
  end

  def colors_array
    colors.map do |color|
      color.split * 4
    end.flatten
  end

  def secret_generator
    @answer = computer_selection
  end

  def computer_selection
    colors_array.shuffle.sample(4)
  end

  def guess_compare
    @guess_manager.guesses.last
  end

  def color_check
    @color_correct = 0
    guess_compare.select do |color|
      if answer.include?(color)
        @color_correct += 1
      end
    end
    return @color_correct
  end

  def compare
    @guess_manager.guesses.last.zip(answer)
  end

  def position_check
    @position_counter = 0
    compare.map do |comparison|
      if comparison.first == comparison.last
        @position_counter += 1
      end
    end
    return @position_counter
  end

end
