#!/usr/bin/env python
# -*- coding: utf-8 -*

from random import randint


def hilo():
    while True:
        print(
            "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n"
            "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'\n"
            "If you guess correctly, you win!\n")

        answer = randint(1, 101)
        guess = 0

        for attempt in range(1, 8):
            while True:
                try:
                    guess = int(input(f"Guess #{attempt} (1-100): ").strip())
                    if guess >= 1 and guess <= 100:
                        break
                except:
                    pass

            if guess < answer:
                print("Too low.")
            elif guess > answer:
                print("Too high.")
            else:
                print("Correct! You win!")
                break

        if guess != answer:
            print(f"Sorry, you lost. The correct number was {answer}.")

        if input("\nWould you like to play again? (y/n): ") != "y":
            print("Thanks for playing!")
            break


hilo()
