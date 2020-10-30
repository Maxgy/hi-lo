import kotlin.random.Random

fun hilo() {
    while (true) {
        println("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n" +
            "If your guess is too low, I'll say \'Too low\' if your guess is too high, I'll say \'Too high\'.\n" +
            "If you guess correctly, you win!\n")

        val answer = Random.nextInt(1, 101)

        var guess = 0
        for (attempt in 1..7) {
            while (true) {
                print(String.format("Guess %s (1-100): ", attempt))
                try {
                    guess = readLine()!!.toInt()
                    if (guess >= 1 && guess <= 100) {
                        break
                    }
                } catch (e: NumberFormatException) {} 
            }

            if (guess < answer) {
                println("Too low.")
            } else if (guess > answer) {
                println("Too high.")
            } else {
                println("You win!")
                break
            }
        }

        if (guess != answer) {
            println(String.format("You lost. The correct number was %s.", answer))
        }

        print("Would you like to play again? (y/n): ")
        if (!readLine()!!.startsWith("y")) {
            println("Thanks for playing!")
            break
        }
    }        
}

fun main(args: Array<String>) {
    hilo()
}
