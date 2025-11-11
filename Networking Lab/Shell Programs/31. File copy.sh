#!/bin/bash

echo -e -p "Enter the Source file : " src
echo -e -p "Enter the destination : " des

cmd=`cat $src >> $des`
