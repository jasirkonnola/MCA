#!/bin/bash

read -p "Enter the  number :" n
temp=$n
sum=0
while [ $temp -ne 0 ]
do
        rem=$((temp % 10))
        sum=$((sum + rem))
        temp=$((temp / 10))
done
echo "sum of $n is $sum."
