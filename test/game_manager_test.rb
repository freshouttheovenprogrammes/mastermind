require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_manager'

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
    game_manager.answer = ["t", "e", "s", "t"]
    game_manager.guess_manager.user_input("test")
    game_manager.position_check
    assert_equal 4, game_manager.position_counter
  end

  def test_user_is_notified_too_many_colors_entered
    skip
    game_manager = GameManager.new
    game_manager.guess_manager.user_input("RggBy")

    assert_equal "Entry has too many colors. Just enter 4 colors", guess_manager.input_check
  end

end
