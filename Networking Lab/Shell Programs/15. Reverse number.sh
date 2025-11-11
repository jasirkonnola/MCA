#!/bin/bash

echo "Enter the number:"
read n
tmp=0
while [ $n -gt 0 ]
do
	tmp=$((tmp * 10 + (n % 10)))
	n=$((n / 10))
done
echo "the reverse of the number:"
echo $tmp

