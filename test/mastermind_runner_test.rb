require_relative 'test_helper'
require './lib/mastermind_runner_control'

class MastermindRunnerControlTest < Minitest::Test

  def test_that_it_exists
    runner = MastermindRunnerControl.new

    assert_instance_of MastermindRunnerControl, runner
  end

  def test_that_it_can_reach_game_prompts
    runner = MastermindRunnerControl.new

    assert_equal GamePrompts, runner.game_prompts.class
  end

  def test_that_it_can_reach_guess_class
    runner = MastermindRunnerControl.new

    assert_equal GuessManager, runner.guess_manager.class
  end

  def test_that_it_can_reach_gamemanager_class
    runner = MastermindRunnerControl.new

    assert_equal GameManager, runner.game_manager.class
  end

  def test_user_play_prompt_is_successfully_hit_upon_p_input
    skip
    runner = MastermindRunnerControl.new
    runner.guess_manager.user_input("p")
    assert_equal "I have generated a sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.", runner.game_prompts.play_prompt
  end

end
