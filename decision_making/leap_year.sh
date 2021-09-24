#/bin/bash
echo "***SCRIPT TO CHECK YEAR IS LEAP YEAR OR NOT***"
echo "Please input an year"
read year

#method1
check1=`expr $year % 4`
check2=`expr $year % 100`
check3=`expr $year % 400`
#if [ $check1 -eq 0 -a $check2 != 0 -o $check3 -eq 0 ]
#then
#    echo "LEAP YEAR"
#else
#    echo "NOT A LEAP YEAR"
#fi

#method2
if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]; then
    echo "LEAP YEAR"
else
    echo "NOT A LEAP YEAR"
fi
exit

