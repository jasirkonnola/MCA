#!/bin/bash

echo "Enter a string:"
read s
rev=$(echo "$s" | rev) # Reverse the input string
echo $rev

if [ "$s" = "$rev" ]; then
    echo "The string is a palindrome"
else
    echo "Not a palindrome"
fi


