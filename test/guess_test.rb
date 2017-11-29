require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'

class GuessTest < Minitest::Test

  def test_that_guess_class_exists
    guess = Guess.new

    assert_instance_of Guess, guess
  end

  def test_that_we_have_different_colors
    guess = Guess.new

    assert_equal "Red", guess.colors[0]
    assert_equal "Green", guess.colors[1]
    assert_equal "Blue", guess.colors[2]
    assert_equal "Yellow", guess.colors[3]
  end

  def test_computer_selection_is_colors_shuffled
    guess = Guess.new

    assert_equal 4, guess.computer_selection.count
  end

  def test_guess_counter_increases
    guess = Guess.new
    guess.user_input("test")

    assert_equal 1, guess.guess_counter
  end


end
