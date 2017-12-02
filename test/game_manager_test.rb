require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_manager'
require './lib/guess'

class GameManagerTest < Minitest::Test

  def test_that_game_manager_class_exists
    game_manager = GameManager.new

    assert_instance_of GameManager, game_manager
  end

  def test_computer_selection_is_colors_shuffled
    game_manager = GameManager.new

    assert_equal 4, game_manager.computer_selection.count
  end

  def test_answer_array_has_the_colors
    game_manager = GameManager.new
    game_manager.secret_generator

    assert_equal 4, game_manager.answer.count
  end

  def test_that_guess_can_be_compared_to_answer
    game_manager = GameManager.new
    game_manager.answer = ["r", "g", "b", "y"]
    game_manager.guess.user_input("rgby")
    game_manager.input_check

    assert_equal 4, game_manager.correct_position
    assert_equal 4, game_manager.color_correct
  end

end
