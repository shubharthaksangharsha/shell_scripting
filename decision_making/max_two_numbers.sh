#/bin/bash
echo "***SCRIPT TO CHECK WHICH NUMBER IS MAXIMUM***"
echo "Please enter first  number"
read num1
echo "Please enter second number"
read num2

if [ "$num1" -gt "$num2" ]
then
    echo "$num1 is greater than $num2"
elif [ "$num1" -eq "$num2" ]
then 
     echo "$num1 is equal to $num2"
else
    echo "$num2 is greater  than $num1"
fi
exit
    
