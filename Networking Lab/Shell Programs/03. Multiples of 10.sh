#!/bin/bash
a=10
while [ $a -le 100 ]
do
	echo $a
	a=$(($a + 10))
done
