#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void hilo() {
    while (true) {
        printf(
            "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to "
            "guess a number 1-100.\nIf your guess is too low, I'll say \'Too "
            "low\'; if your guess is too high, I'll say \'Too high\'.\nIf you "
            "guess correctly, you win!\n\n");

        int answer = rand() % 100 + 1;

        int guess = 0;
        for (int attempt = 1; attempt <= 7; ++attempt) {
            while (true) {
                printf("Guess #%d (1-100): ", attempt);

                int input = 0;
                scanf("%d", &input);

                guess = input;
                if (guess >= 1 && guess <= 100) {
                    break;
                }
                while (getchar() != '\n')
                    ;
            }

            if (guess < answer) {
                printf("Too low.\n");
            } else if (guess > answer) {
                printf("Too high.\n");
            } else {
                printf("You win!\n");
                break;
            }
        }

        if (guess != answer) {
            printf("You lost. The correct number was %d.\n", answer);
        }

        printf("Would you like to play again? (y/n): ");
        char choice[] = "n";
        scanf("%s", choice);
        if (choice[0] != 'y') {
            printf("Thanks for playing!\n");
            break;
        }
    }
}

int main() {
    srand(time(NULL));

    hilo();

    return 0;
}
