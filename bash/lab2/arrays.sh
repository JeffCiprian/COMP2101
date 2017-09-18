#!/bin/bash
#practice using arrays

#Create an array named colours and give it the following data values:
#red,green,blue

#Create a hash named animals and give it the following data elements:
#key red - value cardinal, key green - value frog, key blue - value lobster

colours=("red" "green" "blue")

declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster")

echo "My colours are: ${colours[*]}"
echo "The animals array contains ${animals[red]}, ${animals[green]}, ${animals[blue]}."
echo "${animals[*]} are all in my array."

read -p "What number do you want from 0 to 2?"
currentcolour=${colours[$num]}
currentanimal=${animals[$currentcolour]}
echo "Number  refers to a $currentcolour $currentanimal"
