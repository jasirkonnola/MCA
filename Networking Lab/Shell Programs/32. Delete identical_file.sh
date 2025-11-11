#!/bin/bash

read -e -p "Enter the filename : " f1
read -e -p "Enter the another filename : " f2
if cmp -s "$f1" "$f2" ;
then
        rm "$f1";
        echo "the identical file is deleted."
else
        echo "the file are different."
fi
