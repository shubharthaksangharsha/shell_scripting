#! /bin/bash
echo "***SCRIPT TO CHECK NUMBER IS SPECIAL NUMBER OR NOT"
read -p "Please input a number: " num
readonly temp=$num
#method 1 : using array
while [ $num -gt 0 ]; do
    r=`expr $num % 10`
    store_digits+=($r)
    num=`expr $num / 10`
done
fact=1
for i in ${store_digits[*]}; do
    while [ $i -ge 1 ]; do
	fact=`expr $fact \* $i`
	i=`expr $i - 1`
    done
    store_fact+=($fact)
    fact=1
done
sum=0
for i in ${store_fact[*]}; do
    sum=`expr $sum + $i`
done
echo "METHOD1 USING ARRAY"
if [ $sum -eq $temp ]; then
    echo "$temp is Special Number"
else
    echo "$temp is not a Special Number"
fi

#method2 : without using array
factorial=1
result=0
num=$temp
while [ $num -gt 0 ]; do
    r=`expr $num % 10`
    while [ $r -ne 0 ]; do
	factorial=`expr $factorial \* $r`
	let "r-=1"	
    done
    result=`expr $result + $factorial`
    factorial=1
    num=`expr $num / 10`
done
echo "METHOD2 WITHOUT ARRAY"
if [ $result -eq $temp ]; then
    echo "$temp is Special Number"
else
    echo "$temp is not a Special Number"
fi
exit
