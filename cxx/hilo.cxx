#include <iostream>
#include <random>

void hilo() {
    std::random_device rd;
    std::mt19937 generator(rd());
    std::uniform_int_distribution<int> distribution(1, 101);

    while (true) {
        std::cout
            << "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to "
               "guess a number 1-100.\n"
            << "If your guess is too low, I'll say \'Too low\'; if your "
               "guess is too high, I'll say \'Too high\'.\n"
            << "If you guess correctly, you win!\n"
            << std::endl;

        int answer = distribution(generator);

        int guess = 0;
        for (int attempt = 1; attempt <= 7; ++attempt) {
            while (true) {
                std::cout << "Guess #" << attempt << " (1-100): ";

                std::string input;
                std::getline(std::cin, input);

                try {
                    guess = std::stoi(input);
                    if (guess >= 1 && guess <= 100) {
                        break;
                    }
                } catch (...) {
                }
            }

            if (guess < answer) {
                std::cout << "Too low." << std::endl;
            } else if (guess > answer) {
                std::cout << "Too high." << std::endl;
            } else {
                std::cout << "You win!" << std::endl;
                break;
            }
        }

        if (guess != answer) {
            std::cout << "You lost. The correct number was " << answer << "."
                      << std::endl;
        }

        std::cout << "Would you like to play again? (y/n): ";
        std::string choice;
        std::getline(std::cin, choice);
        if (choice != "y") {
            std::cout << "Thanks for playing!" << std::endl;
            break;
        }
    }
}

int main() {
    hilo();

    return 0;
}
