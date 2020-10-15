use std::io::{self, Write};

use rand::prelude::*;

fn read_line() -> String {
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Error reading stdin");
    input.trim().to_owned()
}

fn hilo() {
    let mut rng = rand::thread_rng();

    loop {
        println!("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n\
            If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'.\n\
            If you guess correctly, you win!\n");

        let answer = rng.gen_range(1, 101);

        let mut guess = 0;
        for attempt in 1..=7 {
            loop {
                print!("Guess #{} (1-100): ", attempt);
                io::stdout().flush().expect("Error flushing stdout");

                if let Ok(n) = read_line().parse() {
                    if n >= 1 && n <= 100 {
                        guess = n;
                        break;
                    }
                }
            }

            if guess < answer {
                println!("Too low.");
            } else if guess > answer {
                println!("Too high.");
            } else {
                break;
            }
        }

        if guess == answer {
            println!("You win!");
        } else {
            println!("You lost. The correct number was {}.", answer);
        }

        print!("Would you like to play again? (y/n): ");
        io::stdout().flush().expect("Error flushing stdout");
        if read_line() != "y" {
            println!("Thanks for playing!");
            break;
        }
    }
}

fn main() {
    hilo();
}
