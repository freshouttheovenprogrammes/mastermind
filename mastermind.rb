require 'mastermind_runner_control'


puts "Welcome to Mastermind!"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

input = gets.chomp.downcase
runner_control = MastermindRunnerControl.new
game_manager = GameManager.new
game_manager.secret_generator
# game_start   = game_manager.start_time
# game_end     = game_manager.end_time

def user_wants_to_play
  game_prompts.play_prompt
  input = gets.chomp
end

loop do
  if input == "p" || input == "play"
    game_prompts.play_prompt
    input = gets.chomp
  elsif input == "i" || input == "instructions"
    game_prompts.instructions
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
      game_prompts.congrats_prompt(game_manager)
        break
    else
      game_prompts.try_again_prompt(game_manager.guess_compare.join.upcase, result, colors_right, guess_count)
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
 TO DO!!!!
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
 clean up instructions
 print the last guess and iterate backwards thru array of guesses w/ ^[[A as input and go the other way if ^[[B is entered
=end

=begin
  \edgecase\
    after play_prompt if input == 'pppp' it initiates a guess w/o the
=end

=begin
  * ask mentor*
  struggled w/ testing the random things.
    - like how to get the value of the random first element of "answer"
      and check it against the most recent guess (game_manager_test rb 41-48)
      commit "head scratch" shows where I was at when I was stuck
    - referencing above ^ does this inherintely become difficult to test because
      these methods just return the counter? Should I maybe do it differently?
=end
