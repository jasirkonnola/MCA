#!/bin/bash

read -p "Enter a number: " num
length=${#num}

sum=0
temp=$num

while [ $num -ne 0 ]; do
    rem=$((num % 10))
    sum=$((sum + (rem ** length)))
    num=$((num / 10))
done

if [ $sum -eq $temp ]; then
    echo "It's an Armstrong number."
else
    echo "It's not an Armstrong number."
fi
