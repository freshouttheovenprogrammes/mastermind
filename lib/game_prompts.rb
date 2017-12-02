require './lib/guess_manager'

class GamePrompts

  def play_prompt
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  puts "What's your guess?"
  end

  def try_again_prompt(current_guess_array, result, colors_right)
    puts "#{current_guess_array}#{result}"
    puts "You have #{colors_right}"
    puts "Try again!"
    puts "Whats your guess?"
  end

  def congrats_prompt
    puts "Great job! You have guessed all of the things correctly"
  end

  def instructions
    puts"The computer picks a sequence of colors. The number of colors is the code length. The code length is 4. There can be multiple instances of the same color.

    - The objective of the game is to guess the exact positions of the colors in the computer's sequence.

    - After filling a line with your guesses and clicking on the 'Check' button, the computer responses with the result of your guess.

    - For each color in your guess that is in the correct color and correct position in the code sequence, the computer display a small red color on the right side of the current guess.

    - For each color in your guess that is in the correct color but is NOT in the correct position in the code sequence, the computer display a small white color on the right side of the current guess.

    - You win the game when you manage to guess all the colors in the code sequence and when they all in the right position."
  end

  def quit_prompt
    puts "Goodbye! Thanks for playing!"
  end

end
