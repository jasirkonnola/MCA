#!/bin/bash

echo "Enter a number:"
read num
sum=0;
for((i = 0; i < num+1; i++));
do
	sum=`expr $sum + $i`
done
echo "Sum of $num numbers : $sum"
