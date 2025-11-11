#!/bin/bash

read -p "Enter the file name : " file

if [[ ! -f "$file" ]];
then
	echo "The $file Not Found."
	exit 1
else
	cat $file
fi

read -p "Enter the line you want to append : " l

sed -i "/\$/a $l" $file
echo "Line append after each line with a period."

cat $file


