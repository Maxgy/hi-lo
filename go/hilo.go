package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func hilo() {
	for {
		fmt.Println("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.")
		fmt.Println("If your guess is too low, I'll say 'Too low'; if your guess is too high, I'll say 'Too high'.")
		fmt.Println("If you guess correctly, you win!")

		rand.Seed(time.Now().UTC().UnixNano())
		reader := bufio.NewReader(os.Stdin)

		answer := rand.Intn(100) + 1

		guess := 0
		var err error
		guessStr := ""
		for i := 0; i < 7; i++ {
			for {
				fmt.Print("\nGuess #" + strconv.Itoa(i+1) + " (1-100): ")
				guessStr, _ = reader.ReadString('\n')
				guess, err = strconv.Atoi(strings.Trim(guessStr, "\n"))
				if guessStr != "\n" && err == nil && guess >= 1 && guess <= 100 {
					break
				}
			}
			if guess > answer {
				fmt.Println("Too high.")
			} else if guess < answer {
				fmt.Println("Too low.")
			} else {
				break
			}
		}

		if guess == answer {
			fmt.Println("You win!")
		} else {
			fmt.Println("You lost. The correct number was " + strconv.Itoa(answer) + ".")
		}

		fmt.Print("Would you like to play again? (y/n): ")
		choice, _ := reader.ReadString('\n')
		choice = strings.Trim(choice, "\n")
		if choice != "y" {
			print("Thanks for playing!")
			break
		}
	}

}

func main() {
	hilo()
}
