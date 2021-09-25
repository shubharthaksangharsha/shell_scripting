#! /bin/bash
echo "***SCRIPT used to APPEND text in a file***"
echo -e "Please enter the file name: \c"
read file_name
if [ -f $file_name ]; then
    echo "$file_name Found!"
    if [ -w $file_name ]; then
	echo "Type your text. Press Ctrl+d to exit"
	cat >> $file_name
	echo
	echo "Text Appended"
    else
	echo "Do not have Write Permissions!"
    fi
else
    echo "$file_name not Found!"
fi

