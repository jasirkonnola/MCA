#!/bin/bash


read -p "Enter the filename                 : " filename
cat $filename

read -p "Enter the line you want to delete : " dl

sed -i "${dl}d" $filename
cat $filename
