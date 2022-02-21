#!/bin/bash

echo "this is brackets finding script"
echo -n "Enter file name: "

read file

echo ""
grep -P '\[.*?\]' $file

echo ""
echo -n "Do you want to remove brackets into new file? (y/n)"
read cmd

if [ "$cmd" == "y" ];then
	export newfile="no_brac_${file}"
	grep -viP '\[.*?\]' $file > $newfile
	cat $newfile
fi
