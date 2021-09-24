#!bin/bash
echo "***SCRIPT TO CHECK NUMBER IS PALLINDROME OR NOT"
echo "Please  input a number"
read num
readonly temp=$num
res=0
while [ $num -gt 0 ]
do
    r=`expr $num % 10`
    res=`expr $res \* 10 + $r`
    num=`expr $num / 10`
    
done
if [ "$res" -eq "$temp" ]; then
    echo "$temp is Pallindrome"
else
    echo "$temp is not Pallindrome"
fi
exit
