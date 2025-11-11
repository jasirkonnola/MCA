#!/bin/bash 
read -e -p "Enter the filename : " filename
if [[ -s $filename ]];
then 
	echo "$filename is not empty"
else
	echo "$filename is empty"
fi
