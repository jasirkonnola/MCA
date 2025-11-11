#!/bin/bash

read -e -p "Enter the filename :" filename
if [[ -r $filename ]]; then
        echo "the file have read permission."
else
        echo "the file have no read permission."
fi

if [[ -w $filename ]]; then
        echo "the file have write permission."
else
        echo "the file have no write permission."
fi
if [[ -x $filename ]]; then
        echo "the file have execute permission."
else
        echo "the file have no execute permission."
fi

