#!/bin/bash

read -p "Enter the filename : " file
cat $file
sed -i 's/\([0-9]\+\)/[\1]/g' $file
echo "after the update.."
cat $file
