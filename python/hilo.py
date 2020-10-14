#!/usr/bin/env python
# -*- coding: utf-8 -*

from random import randint


def hilo():
    while True:
        print(
            "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100."
        )
        print(
            "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'."
        )
        print("If you guess correctly, you win!\n")

        answer = randint(1, 101)
        guess = 0

        for attempt in range(1, 8):
            while True:
                print("Guess #" + str(attempt) + " (1-100): ", end="")
                try:
                    guess = int(input())
                except:
                    continue
                if guess >= 1 and guess <= 100:
                    break
            if guess < answer:
                print("Too low.")
            elif guess > answer:
                print("Too high.")
            else:
                break
            attempt += 1

        if guess == answer:
            print("Correct! You win!")
        else:
            print("Sorry, you lost. The correct number was " + str(answer) +
                  ".")

        print("\nWould you like to play again? (y/n): ", end="")
        choice = input()
        if choice != "y":
            print("Thanks for playing!")
            break


hilo()
