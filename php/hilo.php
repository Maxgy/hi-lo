<?php
function hilo() {
    while (true) {
        echo "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.
If your guess is too low, I'll say 'Too low'; if your guess is too high, I'll say 'Too high'
If you guess correctly, you win!\n\n";

        $answer = rand(1, 100);
        $guess = 0;

        for ($attempt = 1; $attempt <= 7; $attempt += 1) {
            while (true) {
                echo "Guess $attempt (1-100): ";
                try {
                    $guess = (int)readline();
                    if ($guess >= 1 and $guess <= 100)
                        break;
                }
                catch (exception $e) {}
            }

            if ($guess < $answer)
                echo "Too low.\n";
            elseif ($guess > $answer)
                echo "Too high.\n";
            else {
                echo "Correct! You win!\n";
                break;
            }
        }

        if ($guess != $answer)
            echo "Sorry, you lost. The correct number was $answer.\n";

        echo "\nWould you like to play again? (y/n): ";
        if (readline() != "y") {
            echo "Thanks for playing!\n";
            break;
        }
    }
}

hilo();
?>
