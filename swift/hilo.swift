func hilo() {
    while true {
        print("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n",
            "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'\n",
            "If you guess correctly, you win!\n")

        let answer = Int.random(in: 1...100);

        var guess = 0;
        for attempt in 1...7 {
            while true {
                print("Guess #\(attempt) (1-100):", terminator: " ")
                let input = Int(readLine() ?? "");
                
                if input != nil && input! >= 1 && input! <= 100 {
                    guess = input!
                    break
                }
            }

            if guess < answer {
                print("Too low.")
            } else if guess > answer {
                print("Too high.")
            } else {
                break
            }
        }

        if guess == answer {
            print("You win!")
        } else {
            print("You lost. The correct number was \(answer).")
        }

        print("Would you like to play again? (y/n):", terminator: " ")
        if readLine() != "y" {
            print("Thanks for playing!")
            break
        }
    }
}

hilo()
