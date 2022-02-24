#!/bin/bash
## This file is text report which will have word count head and tail

echo "This is the text report"
echo -n "Please Enter filename to report: "
read file

echo -e "\nWord Count (line word char)":
cat $file | wc


echo -e "\nFirst 3 lines:"
cat $file | head -n3

echo -e "\nLast 3 lines:"
cat $file | tail -n3

echo -ne "\nDo you want to see full text(y/n): "
read cmd
if [ "$cmd" == "y" ]; then
	cat $file
else
	echo "This report end"
fi
