#/bin/sh

#declare a variable
a=4 #make sure to have no spaces before and after = operator

#declare readonly variable means value can't be changed once declared
readonly b=4
b=5 # produce an error

#to read a variable from the standard input use read command
read c

#to display a message on standard output use echo command 
echo "hi i am using echo command"

#to display value of variable use $variablename
echo "$a"
echo "$b"

#to delete/remove a variable use unset
unset a #unset the variable a and its value
echo "$a" #display nothing as variable got deleted
#NOTE: you can't use unset with readonly variables
unset b #produce an error as variable is readonly

# use echo "$$"  to display the PID of current shell
echo "$$"

#use echo "$0" to display filename of current shell
echo "$0"

#opartors in shell use expr or awk command which are  enclosed in backticks ` `
echo `expr 2 \* 2` #used \ before * because * is keyword
echo `expr 4 + 2`
#NOTE: 2 things while using operators
#1:should be enclosed with backticks
#2:should have spaces between operands and operators 

#using if command only
echo "Enter 1st number"
read num1
echo "Enter 2nd number"
read num2
if [ $num1 -eq $num2 ]
then
    echo "Equal"
fi

#using if else command
if [ $num1 -eq $num2 ]
then
    echo "Equal"
else
    echo "Unequal"
fi

#using switch case ( case esec )
cars="bmw" #make sure to use cars="bmw" not cars= "bmw" ( again spaces matters in shell scripting )
case "$cars" in
    #case 1
    "mercedes") echo "Mercedes" ;;
    #case 2
    "audi" ) echo "SHUBHI" ;;
    #case 2
    "bmw") echo "BMW" ;;
esac


#@uthor : Shubharthak Sangharasha 
