#!/bin/bash

greet() {
	echo "Hello, $1!"
}


add(){	
	sum=$(( $1 + $2 ))
	echo "$sum"
}	
	
greet mujakkir
add 10 5
	

