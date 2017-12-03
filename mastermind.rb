require_relative './lib/game_prompts'
require_relative './lib/game_manager'

puts "Welcome to Mastermind!"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

input = gets.chomp.downcase
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
    game_prompts.cheat_prompt(game_manager)
    input = gets.chomp
  elsif input == "q" || input == "quit"
    game_prompts.quit_prompt
    break
  else
    game_manager.guess_manager.user_input(input)
    game_manager.position_check
    result = game_manager.position_counter
    colors_right = game_manager.color_check
    guess_count = game_manager.guess_manager.guesses.count
    if input.length > game_manager.answer.count
      game_prompts.too_many_characters_prompt(game_manager)
      input = gets.chomp
    elsif input.length < game_manager.answer.count
      game_prompts.too_few_characters_prompt(game_manager)
      input = gets.chomp
    elsif game_manager.position_counter == 4
      game_prompts.congrats_prompt
        break
    else
      game_prompts.try_again_prompt(game_manager.guess_manager.guesses.last.join.upcase, result, colors_right, guess_count)
      input = gets.chomp
    end
  end
end

#
# start w/ Time.now
# end w/ Time.now
#
# end - start
=begin
 TO DO!!!
 ---------------
 make some more tests....
 get time attribute in there
 clean up game_manager.colors
 set up Simplecov
 refactor try again prompt argument to shorten code length
 fix attr_accessor on game_manager
 touch up congrats_prompt
 create a box that shows user what they have entered
 if user enters another wrong input # on their entry, have a witty response
 make readme
 have a sweet brain gif appear.
 make sure that it doesn't take non-color entries
=end
