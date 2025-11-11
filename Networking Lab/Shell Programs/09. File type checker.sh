#!/bin/bash

echo "Enter the filename with extension:"
read name
extn=$(echo $name | cut -d'.' -f2)
case $extn in
	"sh") echo "$name is a shell script";;
	"jpg") echo "$name is a image file";;
	"txt") echo "$name is a text file";;
	"mp3") echo "$name is a audio file";;
	"mp4") echo "$name is a video file";;
esac

