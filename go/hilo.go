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

func main() {
	rand.Seed(time.Now().UTC().UnixNano())
	reader := bufio.NewReader(os.Stdin)

	number := rand.Intn(100) + 1

	fmt.Println("Guess the correct number to win.")

	guess := 0
	var err error
	guessStr := ""
	for i := 0; i < 7; i++ {
		for {
			fmt.Print("Guess #" + strconv.Itoa(i+1) + " (1-100): ")
			guessStr, _ = reader.ReadString('\n')
			guess, err = strconv.Atoi(strings.Trim(guessStr, "\n"))
			if guessStr != "\n" && err == nil && guess >= 1 && guess <= 100 {
				break
			}
		}
		if guess > number {
			fmt.Println("Too high.")
		} else if guess < number {
			fmt.Println("Too low.")
		} else {
			fmt.Println("You win!")
			os.Exit(0)
		}
	}
	fmt.Println("You lost. The correct number was " + strconv.Itoa(number) + ".")
}
