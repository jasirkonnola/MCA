#!/bin/bash

read -p "Enter the filename             : " filename
cat $filename

read -p "Enter the word want to replace : " o
read -p "Enter the new word             : " n

sed -i "s/$o/$n/" "$filename"
echo "after replacing"
cat $filename
