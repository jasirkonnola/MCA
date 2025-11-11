#!/bin/bash

echo "Enter first number:"
read n1
echo "Enter second number:"
read n2

echo "Choose an operation to perform:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
read choice

case $choice in
    1) result=$((n1 + n2))
       echo "Result of addition is $result"
       ;;
    2) result=$((n1 - n2))
       echo "Result of subtraction is $result"
       ;;
    3) result=$((n1 * n2))
       echo "Result of multiplication is $result"
       ;;
    4) if [ $n2 -ne 0 ]; then
           result=$((n1 / n2))
           echo "Result of division is $result"
       else
           echo "Division by zero is not allowed"
       fi
       ;;
    *) echo "Invalid option"
       ;;
esac
