require_relative './lib/game_prompts'

puts "Welcome to Mastermind!"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
input = gets.chomp
game_prompts = GamePrompts.new
guess_class  = Guess.new

if input == "p"
  game_prompts.play_prompt
  user_play_input = gets.chomp
elsif input == "i"
  game_prompts.instructions
  p "So are you ready to play?"
    return
else
  game.prompts.quit
end
