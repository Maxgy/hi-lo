use std::{
    cmp::Ordering,
    io::{self, Write},
};

use rand::prelude::*;

fn read_line(prompt: &str) -> String {
    print!("{}", prompt);
    io::stdout().flush().expect("Error flushing stdout");

    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Error reading stdin");
    input.trim().to_owned()
}

fn hilo() {
    loop {
        println!("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n\
            If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'.\n\
            If you guess correctly, you win!\n");

        let answer = rand::thread_rng().gen_range(1..=100);

        let mut guess = 0;
        for attempt in 1..=7 {
            loop {
                if let Ok(n) = read_line(&format!("Guess #{} (1-100): ", attempt)).parse() {
                    if (1..=100).contains(&n) {
                        guess = n;
                        break;
                    }
                }
            }

            match guess.cmp(&answer) {
                Ordering::Less => println!("Too low."),
                Ordering::Greater => println!("Too high."),
                Ordering::Equal => {
                    println!("You win!");
                    break;
                }
            }
        }

        if guess != answer {
            println!("You lost. The correct number was {}.", answer);
        }

        if read_line("Would you like to play again? (y/N): ") != "y" {
            println!("Thanks for playing!");
            break;
        }
    }
}

fn main() {
    hilo();
}
