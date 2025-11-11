#!/bin/bash

read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
read -p "Enter d: " d

echo "Expression is a*20-b*2-c/d"
result=$(echo "scale=2;$a*20-$b*2+$c/$d" | bc)
echo $result
