#!/bin/sh
#By Shubharthak
echo "*****Program to check number is odd or even*****"
echo "Enter a number to check it's odd or even: "
read num
if [  `expr $num % 2` -eq 0 ]
then
    echo "EVEN!"
else
    echo "ODD!"
fi
exit

