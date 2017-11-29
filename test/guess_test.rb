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


end
