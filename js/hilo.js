function hilo() {
  while (true) {
    alert(
      "\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\nIf your guess is too low, I'll say \'Too low\' if your guess is too high, I'll say \'Too high\'.\nIf you guess correctly, you win!\n ",
    );

    let answer = Math.floor(Math.random() * 100 + 1);

    let guess = 0;
    for (let attempt = 1; attempt <= 7; attempt += 1) {
      while (true) {
        let input = parseInt(prompt(`Guess #${attempt} (1-100): `));

        if (input != NaN && input >= 1 && input <= 100) {
          guess = input;
          break;
        }
      }

      if (guess < answer) {
        alert("Too low.");
      } else if (guess > answer) {
        alert("Too high.");
      } else {
        break;
      }
    }

    if (guess == answer) {
      alert("You win!");
    } else {
      alert(`You lost. The correct number was ${answer}.`);
    }

    let choice = prompt("Would you like to play again? (y/n): ");
    if (choice != "y") {
      alert("Thanks for playing!");
      break;
    }
  }
}

hilo();
