#!/bin/bash

#this is my first calculator

start="y"

while [ "$start" == "y" ]; do
	echo -n "Please enter command (+,-,*,/): "	
	read cmd
	echo -n "Enter the fisrt number: "
	read x
	echo -n "Enter the second number: "
	read y
	if [ "$cmd" == "+" ]; then
		sum=$(($x+$y))
		echo "$x + $y = $sum"
	elif [ "$cmd" == "-" ]; then
		diff=$(($x-$y))
		echo "$x - $y = $diff"
	elif [ "$cmd" == "*" ]; then
		mul=$(($x*$y))
		echo "$x * $y = $mul"
	elif [ "$cmd" == "/" ]; then
		div=$(($x/$y))
		echo "$x // $y = $div"
	else
		echo "Invalid command"
	fi
	
	echo -n  "Do you want to calculate again? (y/n): "
	read start
done
