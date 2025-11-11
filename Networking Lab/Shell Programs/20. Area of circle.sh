#!/bin/bash

calculate_area() {
	radius=$1
	area=$(echo "scale=2; 3.14 * $radius * $radius" | bc)
	echo "the area of circle with radius $radius is $area"
}

read -p "Enter the radius of the circle	:" radius 
calculate_area $radius
