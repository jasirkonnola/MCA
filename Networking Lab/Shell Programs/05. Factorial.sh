#!/bin/bash

echo "Enter a number:"
read num
fact=1
for((i=1;i<$num+1;i++))
do
	fact=$((i*fact))
done
echo "Factorial of $num : $fact"
