#!/bin/bash

read -p "Enter the file name : " filename

echo "1: delete a particular line"
echo "2: delete last line"
echo "3: delete lines between range x and y"
echo "4: delete blank line"

read -p "enter your choice : " choice
case $choice in
	"1")
		read -p "enter the line number you want to deleted : " lineno
		sed -i "${lineno}d" "$filename"
		echo "deleting line number $lineno..."
		cat "$filename"
		;;
	"2")
		echo "deleting the last line....."
		sed -i '$d' $filename
		cat "$filename"
		;;
	"3")
		totalline=$(wc -l < "$filename")
		read -p "enter the line range between 1 to $totalline : " x y
		sed -i "${x},${y}d" $filename
		cat "$filename"
		;;
	"4")
		echo "deleting the blank lines....."
		sed -i '/^$/d' $filename
		cat "$filename"
		;;
	*)
		echo "invaild choice..."
		exit 1
		;;

esac
