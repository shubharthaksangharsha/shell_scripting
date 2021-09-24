#!/bin/bash
echo "***SCRIPT TO CHECK GIVEN CHARACTER IS ALPHABET OR NOT***"
echo "Please input a character"
read char
#method 1 if else
if [[ "$char" == [a-z] || "$char" == [A-Z] ]]
then
    echo "Alphabet"
else
    echo "Not a alphabet"
fi
exit

	    
