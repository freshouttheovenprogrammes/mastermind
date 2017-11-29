require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'

class GuessTest < Minitest::Test

  def test_that_it_exists
    guess = Guess.new

    assert_instance_of Guess, guess
  end

  def test_that_we_have_no_guesses_yet
    guess = Guess.new

    assert_equal [], guess.guesses
  end

  def test_that_when_user_input_received_input_is_now_in_guesses_array
    guess = Guess.new

    guess.user_input("test1")
    guess.user_input("test2")

    assert_equal ["test1", "test2"], guess.guesses
  end

  def test_guess_counter_works
    guess = Guess.new

    guess.user_input("test1")
    guess.user_input("test2")

    assert_equal 2, guess.guess_counter
  end


end
