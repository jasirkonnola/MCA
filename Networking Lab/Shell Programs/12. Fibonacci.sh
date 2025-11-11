#!/bin/bash

array=(0 1)
echo "Enter the Number:"
read Number

for((i=2;i<=$Number;i++))
do
	array[i]=$((${array[i-1]} + ${array[i-2]}))
done


echo ${array[@]}
