function hilo()
    math.randomseed(os.time())

    while true do
        io.write("\nWelcome to Hi-Lo! The rules are simple: you have 7 tries to guess a number 1-100.\n",
                 "If your guess is too low, I'll say \'Too low\'; if your guess is too high, I'll say \'Too high\'\n",
                 "If you guess correctly, you win!\n\n")

        answer = math.random(1, 100)
        guess = 0

        for attempt = 1, 7, 1 do
            while true do
                io.write(string.format("Guess #%s (1-100): ", attempt))
                input = tonumber(io.read())
                if input ~= nil then
                    guess = input
                    if guess >= 1 and guess <= 100 then
                        break
                    end
                end
            end

            if guess < answer then
                io.write("Too low.\n")
            elseif guess > answer then
                io.write("Too high.\n")
            else
                io.write("Correct! You win!\n")
                break
            end
        end

        if guess ~= answer then
            io.write("Sorry, you lost. The correct number was {answer}.\n")
        end

        io.write("\nWould you like to play again? (y/n): ")
        if io.read() ~= "y" then
            io.write("Thanks for playing!\n")
            break
        end
    end
end

hilo()

