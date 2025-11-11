#!/bin/bash

echo "Enter the number :"
read Number
fact=1

for ((i=1;i<=$Number;i++))
do
	fact=$((i*fact))
done
echo "The factorial of $Number is $fact"
