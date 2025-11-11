#!/bin/bash

read -p "Enter the filename : " file
cat $file
sed -i 's/[a-z]//g' $file
echo "after removing all digit from the file."
cat $file


