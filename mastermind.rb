require_relative './lib/game_prompts'
require_relative './lib/game_manager'

puts "Welcome to Mastermind!"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
input = gets.chomp
game_prompts = GamePrompts.new
game_manager = GameManager.new

loop do
  if input == "p" || input == "play"
    game_prompts.play_prompt
    game_manager.secret_generator
    user_play_input = gets.chomp
    game_manager.user_input(user_play_input)
    game_manager.input_check
  elsif input == "i" || input == "instructions"
    game_prompts.instructions
    p "So are you ready to play?"
  else input == "q" || input == "quit"
    game_prompts.quit_prompt
  end
end

# start w/ Time.now
# end w/ Time.now

# end - start
