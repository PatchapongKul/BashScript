#!/bin/bash

echo "This is Table Manager Script"
echo -e  "Please choose following commands:\n"

echo "1 See table"
echo "2 list column"
echo "3 Sort table"
echo "4 Modify table"

echo -e  "\nother: exit"
echo -n "Please choose the commands(1-4): "
read cmd

if [ "$cmd" == "1" ]; then
	cat table.txt
elif [ "$cmd" == "2" ]; then
	cat table.txt | head -n1
	echo -n "List Column: "
	read col
	awk -v var=$col '{print $var}' table.txt
elif [ "$cmd" == "3" ]; then
	cat table.txt | head -n1
	echo -n "Sort Column: "
	read col
	tail -n +2 table.txt | sort -k$col
elif [ "$cmd" == "4" ]; then
	cat table.txt | head -n1
	echo -n "Change from: "
	read previous
	echo -n "To: "
	read new
	sed "s/$previous/$new/" table.txt > new_table.txt
	cat new_table.txt
else
	echo "Exiting Script"
fi
