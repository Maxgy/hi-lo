#!/usr/bin/ruby

def hilo
  while true
    puts "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n"\
      "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'\n"\
      "If you guess correctly, you win!\n"

    answer = rand(1..100)
    
    guess = 0
    for attempt in 1..7
      while true
        print "\nGuess ##{attempt} (1-100): "

        guess = gets.chomp.to_i

        if guess != 0 and guess >= 1 and guess <= 100 
          break
        end
      end

      if guess < answer
        puts "Too low."
      elsif guess > answer
        puts "Too high."
      else
        break
      end
    end

    if guess == answer
      puts "You win!"
    else
      puts "You lost. The correct answer was #{answer}."
    end

    print "Would you like to play again? (y/n):"
    if gets.chomp != "y"
      puts "Thanks for playing!"
      break
    end
  end
end

hilo
