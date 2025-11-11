#!/bin/bash
echo "Enter the option 1: Add , 2: Sub, 3: Mul 4: Exit"
read opt
case $opt in
        1)echo $(( $1 + $2 ));;
        2)echo $(( $1 - $2 ));;
        3)echo $(( $1 * $3 ));;
        4)exit 1;;
esac
