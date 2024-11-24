#!/usr/bin/env bash

# Function to count files and prompt for guesses
function guess_files {
    local file_count=$(ls -1 | wc -l)  # Count files in the current directory
    local guess=-1                     # Initialize guess variable

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    # Loop until the user guesses correctly
    while [[ $guess -ne $file_count ]]; do
        read -p "Enter your guess: " guess  # Prompt for user input

        if [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $guess -gt $file_count ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed it right!"
        fi
    done
}

# Call the function to start the game
guess_files