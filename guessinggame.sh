#!/usr/bin/env bash

echo "[Welcome to Guessing game]"
function question {
	echo "Guess the number of files in this current directory:"
	read guess

}
question
NBfiles=$(ls -1 | wc -l)
while [[ $guess -ne $NBfiles ]]
do
	if [[ $guess -lt $NBfiles ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
    question
	
done
echo "____________________________________________"
echo "correct answer! The list of files is:"
ls -1
echo "********************************************"
echo "--- Goodbye to the next game, thanks :) ----"
echo "********************************************"