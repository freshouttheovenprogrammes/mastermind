require_relative './lib/game_prompts'
require_relative './lib/game_manager'

puts "Welcome to Mastermind!"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
input = gets.chomp
game_prompts = GamePrompts.new
game_manager = GameManager.new

loop do
  if input == "p"
    game_prompts.play_prompt
    user_play_input = gets.chomp
  elsif input == "i"
    game_prompts.instructions
    p "So are you ready to play?"
      return
  else input == "q" || "quit"
    game_prompts.quit_prompt
  end
end
