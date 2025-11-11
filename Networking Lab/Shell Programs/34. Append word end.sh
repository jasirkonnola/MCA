#!/bin/bash

read -p "enter the filename : " filename
cat $filename
read -p "enter the word want to append : " a
sed -i "s/$/$a/" $filename
cat $filename

