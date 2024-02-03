#!/bin/bash
username=$USER
time=$(date +"%-H")

if [[ $time -ge 18 ]]; then
	echo "Good evening $username!"
elif [[ $time -ge 12 ]]; then
	echo "Good afternoon $username!"
else 
	echo "Good morning $username!"
fi