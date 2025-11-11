#!/bin/bash
echo "Calculator"
echo "------------"
opt=0
while [ $opt -ne 4 ]
do
    echo "Enter your option: 1)Add, 2)Sub, 3)Mul, 4)Quit"
    read opt
    case $opt in
        1) echo "Enter two numbers: "; read a b; echo "Result: $((a + b))";;
        2) echo "Enter two numbers: "; read a b; echo "Result: $((a - b))";;
        3) echo "Enter two numbers: "; read a b; echo "Result: $((a * b))";;
        4) echo "Quitting...";;
        *) echo "Invalid option, please try again";;
    esac
done
