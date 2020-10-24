import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

class Hilo
{
    public static void Game()
    {
        Scanner scan = new Scanner(System.in);
        
        while (true)
        {
            System.out.println("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n" +
                "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'.\n" +
                "If you guess correctly, you win!\n");

            int answer = ThreadLocalRandom.current().nextInt(1, 101);

            int guess = 0;
            for (int attempt = 1; attempt <= 7; ++attempt)
            {
                while (true)
                {
                    System.out.print(String.format("Guess %s (1-100): ", attempt));
                    try
                    {  
                        guess = Integer.parseInt(scan.nextLine());
                    }
                    catch (NumberFormatException e)
                    {} 
                    if (guess >= 1 && guess <= 100)
                    {
                        break;
                    }
                }

                if (guess < answer)
                {
                    System.out.println("Too low.");
                }
                else if (guess > answer)
                {
                    System.out.println("Too high.");
                }
                else
                {
                    System.out.println("You win!");
                    break;
                }

            }

            if (guess != answer)
            {
                System.out.println(String.format("You lost. The correct number was %s.", answer));
            }

            System.out.print("Would you like to play again? (y/n): ");
            if (!scan.nextLine().startsWith("y"))
            {
                System.out.println("Thanks for playing!");
                break;
            }
        }
        
        scan.close();
    }

    public static void main(String[] args)
    {
        Game();
    }
}
