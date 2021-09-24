#/bin/bash
echo "***SCRIPT THAT CHECK GIVEN NUMBER IS POSITIVE NEGATIVE OR ZERO***"
echo "Please input a number"
read num

if [ "$num" -gt 0 ]
then
    echo "$num is POSITIVE"
elif [ "$num" -eq 0 ]
then
    echo "$num is ZERO"
else
    echo "$num is NEGATIVE"
fi
exit
