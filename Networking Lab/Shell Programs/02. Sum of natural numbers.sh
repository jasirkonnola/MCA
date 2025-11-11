#!/bin/bash
echo "enter a number"
read a
sum=0
while [ $a -gt 0 ]
do
	sum=`expr $sum + $a`
	a=`expr $a - 1`
done
echo $sum
