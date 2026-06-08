#!/bin/bash

read -p "enter a number: " number

while [ $number -ge 0 ]; do
	echo "$number"

	((number--))

done	
echo "Done"
