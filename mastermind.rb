require_relative './lib/game_prompts'
require_relative './lib/game_manager'

puts "Welcome to Mastermind!"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

input = gets.chomp
game_prompts = GamePrompts.new
game_manager = GameManager.new
game_manager.secret_generator

loop do
  if input == "p" || input == "play"
    game_prompts.play_prompt
    input = gets.chomp
  elsif input == "i" || input == "instructions"
    game_prompts.instructions
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp
  elsif input == "q" || input == "quit"
    game_prompts.quit_prompt
    break
  else
    game_manager.guess.user_input(input)
    game_manager.input_check
    if game_manager.input_check == "Correct"
      game_prompts.congrats_prompt
        break
    else
      game_prompts.try_again_prompt
      input = gets.chomp
    end
  end
end






def checker
  game_manager.input_check
end
# start w/ Time.now
# end w/ Time.now

# end - start
=begin
 TO DO!!!
 ----------------
 create enum functionality
 before submission, correct the prompts!!!!
 print yr damn loop
=end
