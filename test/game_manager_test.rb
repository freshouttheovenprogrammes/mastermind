require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game_manager'

class GameManagerTest < Minitest::Test

  def test_that_game_manager_class_exists
    game_manager = GameManager.new

    assert_instance_of GameManager, game_manager
  end

  def test_computer_selection_is_colors_shuffled
    game_manager = GameManager.new
    require "pry"; binding.pry
    assert_equal 4, game_manager.computer_selection.count
  end

  def test_game_manager_counter_increases
    game_manager = GameManager.new
    game_manager.user_input("ggrb")

    assert_equal 1, game_manager.guess_counter
  end

  def test_once_guess_made_guess_is_shoveled_into_guesses
    game_manager = GameManager.new
    game_manager.user_input("ggrb")

    assert_equal "ggrb", game_manager.guesses[0]
    assert_equal 1, game_manager.guesses.count
  end

  def test_users_answer_is_stated_incorrect
    game_manager = GameManager.new
    game_manager.user_input("yyrb")

    assert_equal "Incorrect, try again!", game_manager.input_check
  end

  def test_users_answer_is_stated_correct
    game_manager = GameManager.new
    game_manager.user_input("rgby")

    assert_equal "Correct", game_manager.input_check
  end

end
