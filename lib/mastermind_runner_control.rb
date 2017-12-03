require_relative 'game_prompts'
require_relative 'game_manager'
require_relative 'guess_manager'

class MastermindRunnerControl
  attr_reader :game_prompts,
              :guess_manager,
              :game_manager

  def initialize
    @game_prompts  = GamePrompts.new
    @guess_manager = GuessManager.new
    @game_manager  = GameManager.new
  end


end
