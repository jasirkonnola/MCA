#!/bin/bash

echo "Choose an operation to perform + - * /:"
read choice
read -p "Enter a two number : " n1 n2
case $choice in
        "+")
                result=$((n1 + n2))
                echo "Result of additon is $result"
                ;;
        "-")
                result=$((n1 - n2))
                echo "Result of subtraction is $result"
                ;;
        "*")
                result=$((n1 * n2))
                echo "Result of multiplication is $result"
                ;;
        "/") if [ $n2 -le 0 ];then
                echo "the dividion not possible"
                exit 1
        fi
                result=$((n1 / n2))
                echo "Result of Division is $result"
                ;;
        *)
                echo "Invalid option."
                exit 1
                ;;
esac
