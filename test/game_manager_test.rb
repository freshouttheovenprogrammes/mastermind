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

    assert_equal 4, game_manager.computer_selection.count
  end

end
