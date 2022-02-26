#!/bin/bash

echo "this is brackets finding script"
echo -n "Enter file name: "

read file

echo -e "\n"
grep -P '\[.*?\]' $file

echo -ne "\nDo you want to remove brackets into new file? (y/n): "
read cmd

if [ "$cmd" == "y" ];then
	export newfile="no_brac_$file"
	cat $file | sed -E "s/\[[0123456789\]]/ /" > $newfile
	cat $newfile
fi
