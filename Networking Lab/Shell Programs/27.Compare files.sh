#!/bin/bash

read -e -p "Enter the filename : " f1
read -e -p "Enter another filename: " f2

if cmp -s "f1" "f2"; then
        echo "the file is identical"
else
        echo "the file is different"
fi
