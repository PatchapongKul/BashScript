## This file is text report which will have word count head and tail

echo "This is the text report"
echo -n "Please Enter filename to report: "
read file
echo ""
echo "Word Count (line word char)":
cat $file | wc
echo ""

echo "First 3 lines:"
cat $file | head -n3
echo ""

echo "Last 3 lines:"
cat $file | tail -n3
echo ""

echo -n "Do you want to see full text(y/n): "
read cmd
if [ "$cmd" == "y" ]; then
	cat $file
else
	echo "This report end"
fi
