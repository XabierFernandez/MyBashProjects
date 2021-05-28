#!/bin/bash
word='my word'
for (( i=1; i <= 10; i++ ))
do 
    echo "The next number is $i"
done
#Double quote prints the value of a variable
echo "$word"

#Single quotes don't print the value a variable
echo '$word'

#Combine variables with hard-coded text
echo "Take $word!"

#Append text to a variable
echo "Take ${word}!"

FRIEND=' my friend'
#Combine variables
echo "Take ${word}${FRIEND}"
echo "Take $word$FRIEND"