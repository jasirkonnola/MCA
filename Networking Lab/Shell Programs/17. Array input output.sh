#!/bin/bash

read -p "Enter the array size : " s

array=()
for((i=0;i<s;i++))
do
        read -p "Enter the array element $((i + 1)) : " element
        array+=("$element")
done

for((i=0;i<s;i++))
do
        echo -n "${array[i]}  "
done

echo ""
