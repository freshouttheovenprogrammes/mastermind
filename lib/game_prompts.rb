require './lib/game_manager'
require 'time'

class GamePrompts

  def guess_square
    # TO DO
    # Make a square that holds all of the guesses that user made w/ the position_check
  end

  def play_prompt
    puts "I have generated a sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    puts "Use (c) or (cheat) to be a cheater."
    puts "What's your guess?"

  end

  def try_again_prompt(current_guess_array, result, colors_right, guess_count)
    puts "#{current_guess_array} has #{colors_right} of the correct elements with #{result} in the correct position(s)"
    puts "You're on guess #{guess_count} "
    puts "Try again!"
    puts "Whats your guess?"
  end

  def too_many_characters_prompt(game_manager)
    puts "Entry has too many colors. Just enter #{game_manager.answer.count} colors"
  end

  def too_few_characters_prompt(game_manager)
    puts "Entry has too few colors. Please enter #{game_manager.answer.count} colors"
  end

  def cheat_prompt(game_manager)
    puts "Alright ya cheater...the code is #{game_manager.answer.join.upcase}"
    puts "Enter 'p' to continue or just enter the code and get this over with"
  end

  def congrats_prompt(game_manager)
    puts "Great job! You have guessed all of the things correctly"
    puts "Congratulations! You guessed the sequence #{game_manager.answer.join} in #{game_manager.guess_manager.guesses.count} guesses over #{game_manager.elapsed_time.to_s}"
  end

  def instructions
    puts"- The computer picks a sequence of colors. There are 4 colors in this sequence. There can be multiple instances of the same color.

    - The objective of the game is to guess the exact positions of the colors in the computer's sequence.

    - After filling a line with your guesses simply press enter to see your results

    - For each color in your guess that is in the correct color and correct position in the code sequence, the display will notify you of correct colors in the sequence, as well as colors in the correct position

    - You win the game when you manage to guess all the colors in the code sequence and when they all in the right position.

    - You can enter (c) or (cheat) to be a filthy cheater at any time"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def quit_prompt
    puts "Goodbye! Thanks for playing!"
  end

end
