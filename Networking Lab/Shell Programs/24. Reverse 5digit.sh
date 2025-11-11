#!/bin/bash

read -p "Enter the 5 digit number :" n
temp=$n
rev=0
if [[ $n -lt 10000 || $n -gt 99999 ]];then
        echo "the is not a 5 digit"
        exit 1
fi
while [ $temp -ne 0 ]
do
        rem=$((temp % 10))
        rev=$((rev * 10 + rem))
        temp=$((temp / 10))
done
echo "reverse of $n is $rev."
