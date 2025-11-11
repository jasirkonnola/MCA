#!/bin/bash
read -p "Enter the filename : " file
cat $file
read -p "Enter word want to delete:" w
sed -i "/${w}/d" "$file"
cat $file
