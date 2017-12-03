require_relative 'test_helper'
require '../mastermind/mastermind'

class MastermindTest < Minitest::Test

  def test_that_it_exists
    master_mind = Mastermind.new

    assert_instance_of Mastermind, master_mind
  end

  def test_loop_start
    master_mind = Mastermind.new

    assert_equal game_prompts.play_prompt, master_mind.input == "p"
  end

end
