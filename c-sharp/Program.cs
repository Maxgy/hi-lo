using System;

namespace HiLo
{
    class Program
    {
        static void Game()
        {
            Random rand = new Random();

            while (true)
            {
                Console.WriteLine("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n" +
                    "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'.\n" +
                    "If you guess correctly, you win!\n");

                int answer = rand.Next(1, 101);

                int guess = 0;
                for (int attempt = 1; attempt <= 7; ++attempt)
                {
                    while (true)
                    {
                        Console.Write($"Guess #{attempt} (1-100): ");
                        if (Int32.TryParse(Console.ReadLine(), out guess))
                        {
                            if (guess >= 1 && guess <= 100)
                            {
                                break;
                            }
                        }
                    }

                    if (guess < answer)
                    {
                        Console.WriteLine("Too low.");
                    }
                    else if (guess > answer)
                    {
                        Console.WriteLine("Too high.");
                    }
                    else
                    {
                        break;
                    }

                }

                if (guess == answer)
                {
                    Console.WriteLine("You win!");
                }
                else
                {
                    Console.WriteLine($"You lost. The correct number was {answer}.");
                }

                Console.Write("Would you like to play again? (y/n): ");
                string choice = Console.ReadLine();
                if (choice != "y")
                {
                    Console.WriteLine("Thanks for playing!");
                    break;
                }
            }
        }

        static void Main(string[] args)
        {
            Game();
        }
    }
}
