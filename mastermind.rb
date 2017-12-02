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
  elsif input == "c" || input == "cheat"
    puts "Alright ya cheater...the code is #{game_manager.answer.join}, enter 'p' to continue"
    input = gets.chomp
  elsif input == "q" || input == "quit"
    game_prompts.quit_prompt
    break
  else
    game_manager.guess_manager.user_input(input)
    result = game_manager.position_check
    colors_right = game_manager.color_check
    if result == ["O" * result.length]
      game_prompts.congrats_prompt
        break
    else
      game_prompts.try_again_prompt(game_manager.guess_manager.guesses.last, result, colors_right)
      input = gets.chomp
    end
  end
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
