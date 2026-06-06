#!/bin/bash

read -p "Enter the number: " number
if [ $number -lt 0 ]; then
	echo "number is minus"
elif [ $number -eq 0 ]; then
        echo "number is zero"
else
        echo "number is positive"
fi	
