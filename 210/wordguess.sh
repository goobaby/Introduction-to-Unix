#!/bin/bash

declare -l guessword

guessword="$(shuf -n1 /usr/share/dict/linux.words)"

while [[ "$guessword" =~ ^[a-zA-Z]+$ ]]; do
	guessword=$(shuf -n1 /usr/share/dict/linux.words)
done

tr '[A-Z]' '[a-z]' < $guessword

echo "end while"

eggs=$(echo $wordtoguess | sed 's/./&\n/g' | shuf | tr -d "\n")

read -e -i -p "Enter your guess:"

if [ "$REPLY" ="$wordtoguess" ]; 
then
	echo "Good guess!"
	exit 0
else
	echo "Bad guess, correct answer is $wordtoguess"
	exit -1
fi
