require_relative 'test_helper'
require '../mastermind/mastermind'

class MastermindTest < Minitest::Test

  def test_that_it_exists
    master_mind = Mastermind.new

    assert_instance_of Mastermind, master_mind
  end

  def test_user_wants_to_play
    skip
    master_mind = Mastermind.new
    game_prompts = mock('game prompt')
    game_prompts.stubs(:play_prompt).returns("Lets Play!")

    # master_mind.guess_manager.user_input("p")

    assert_equal "Lets Play!", master_mind.user_input("p")
  end
end
