import 'dart:io';
import 'dart:math';

hilo() {
    final random = new Random();

    while (true) {
        print("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n"
              "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'\n"
              "If you guess correctly, you win!\n");

        var answer = random.nextInt(100) + 1;
        var guess = 0;

        for (var attempt = 1; attempt <= 7; ++attempt) {
            while (true) {
                stdout.write("Guess #$attempt (1-100): ");
                var input = int.tryParse(stdin.readLineSync());
                if (input != null) {
                    guess = input;
                    if (guess >= 1 && guess <= 100) break;
                }
            }

            if (guess < answer) print("Too low.");
            else if (guess > answer) print("Too high.");
            else {
                print("Correct! You win!");
                break;
            }
        }

        if (guess != answer) print("Sorry, you lost. The correct number was $answer.");

        stdout.write("\nWould you like to play again? (y/n): ");
        if (stdin.readLineSync() != "y") {
            print("Thanks for playing!");
            break;
        }
    }
}


main() {
    hilo();
}
