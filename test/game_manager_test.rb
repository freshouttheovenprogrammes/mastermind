require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game_manager'

class GameManagerTest < Minitest::Test

  def test_that_game_manager_class_exists
    game_manager = GameManager.new

    assert_instance_of GameManager, game_manager
  end

  def test_that_we_have_different_colors
    game_manager = GameManager.new

    assert_equal "Red", game_manager.colors[0]
    assert_equal "Green", game_manager.colors[1]
    assert_equal "Blue", game_manager.colors[2]
    assert_equal "Yellow", game_manager.colors[3]
  end

  def test_computer_selection_is_colors_shuffled
    game_manager = GameManager.new

    assert_equal 4, game_manager.computer_selection.count
  end

  def test_game_manager_counter_increases
    game_manager = GameManager.new
    game_manager.user_input("test")

    assert_equal 1, game_manager.guess_counter
  end


end
