#!/bin/bash
ls
echo "Enter the filename:"
read name
c=$(wc -l < $name)
echo "no of line in $name = $c"
