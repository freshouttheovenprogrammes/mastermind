require_relative 'test_helper'
require_relative '../lib/guess_manager'

class GuessManagerTest < Minitest::Test

  def test_that_it_exists
    guess = GuessManager.new

    assert_instance_of GuessManager, guess
  end

  def test_that_we_have_no_guesses_yet
    guess = GuessManager.new

    assert_equal [], guess.guesses
  end

  def test_that_when_user_input_received_input_is_now_in_guesses_array
    guess = GuessManager.new

    guess.user_input("rrgb")

    assert_equal 1, guess.guesses.count

    guess.user_input("RRGB")

    assert_equal [["r", "r", "g", "b"], ["r", "r", "g", "b"]], guess.guesses
    assert_equal 2, guess.guesses.count
  end



end
