#!/bin/bash
echo "***SCRIPT TO CHECK NUMBER IS ARMSTRONG OR NOT!***"
read -p "Please input a number: " num
readonly temp=$num
res=0
while [ $num -gt 0 ]; do
    r=`expr $num % 10`
    cube=`expr $r \* $r \* $r`
    res=`expr $res + $cube`
    num=`expr $num / 10`
done
if [ $temp -eq $res ]; then
    echo "$temp is ArmStrong"
else
    echo "$temp isn't ArmStrong"
fi
exit
