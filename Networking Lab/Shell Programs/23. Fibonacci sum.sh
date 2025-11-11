#!/bin/bash

array=(0 1)
read -p "Enter the range :" r
sum=1

for((i=2;i<=$r;i++))
do
        sum=$((sum + i))
        array[i]=$((${array[i-1]} + ${array[i-2]}))
done


echo ${array[@]}
echo "sum of the fibo : $sum"
