#!/bin/bash
# Get hours of current time withou leading zero
time=$(date +"%-H")

if [[ $time -ge 18 ]]; then
	echo "Good evening $USER!"
elif [[ $time -ge 12 ]]; then
	echo "Good afternoon $USER!"
else 
	echo "Good morning $USER!"
fi