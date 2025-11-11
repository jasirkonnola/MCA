#!/bin/bash


read -p "Enter the filename                 : " filename
totalline=$(wc -l < "$filename")

echo "Total line in the file             : $totalline"

read -p "Enter the starting line to extract : " s
read -p "Enter the ending line to extract   : " e

sed -n "${s},${e}p" "$filename"

