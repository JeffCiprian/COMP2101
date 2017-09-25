#!/bin/bash

#This is a pick a number test script.

#Get a random number for the user to guess
# the random number has to be between 1 and 10 inclusive.

mynumber=$(($RANDOM % 10 + 1))

#Ask the user to guess a number

read -p "Please choose a number from 1 to 10: " usernumber
while true; do

#If they get it right, tell them and end

  if [ $mynumber -eq $usernumber ]; then
    echo "You guessed the correct number!"
    exit

#If wrong keep asking

  else
    if [ $mynumber -gt $usernumber ]; then
      echo "Too low."
    else
      echo "Too high."
    fi
  fi
read -p "Please guess again: "
done
