#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -1 | wc -l)

function correct_guess {    
    if [[ $1 -lt $2 ]]        
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    else
	echo ""
	echo "Congratualations! You guessed right!"
    fi
}

while [[ $count -ne $guess ]] 
do
    read -p "Guess how many files are in the current directory? " guess
    # echo "You entered: $guess"
    echo $(correct_guess $guess $count)
    echo ""
done
