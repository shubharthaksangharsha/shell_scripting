#/bin/bash
echo "***SCRIPT TO CHECK MAXIMUM BETWEEN THREE NUMBERS***"
echo "Please input 3 numbers"
read num1
read num2
read num3

if [ "$num1" -gt "$num2" -a "$num1" -gt "$num3" ]
then
    echo "$num1 is greater than $num2 and $num3"
elif [ "$num2" -gt "$num3" -a "$num2" -gt "$num1" ]
then
    echo "$num2 is greater than $num1 and $num3"
else
    echo "$num3 is greater than $num1 and $num2"
fi

