#/bin/bash
echo "SCRIPT TO CHECK NUMBER IS DIVISIBLE OR NOT!"
echo "Please input a dividend"
read dividend
echo "Please input a divisor"
read divisor
#1 way is to assin the variable to the expression 
res=`expr $dividend % $divisor`

#2 way is to directly comparing the expression with 0
if [ `expr $dividend % $divisor` -eq 0 ]
then
    echo "$dividend is Divisble by $divisor"
else
    echo "$dividend is not Divisble by $divisor"
fi

exit
