#!/bin/bash

read -p "Enter the filename : " filename
if [[ -d $filename ]];then
	echo "the $filename is a directory"
else
	echo "the $filename is not a directory"
fi
