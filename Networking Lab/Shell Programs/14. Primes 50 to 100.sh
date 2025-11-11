#!/bin/bash

for ((i=50; i<=100; i++))
do
    prime=1
    for ((j=2; j*j<=i; j++))
    do
        if (( i % j == 0 )); 
	then
            prime=0
            break
        fi
    done

    if (( prime == 1 )); 
    then
        echo $i
    fi
done


