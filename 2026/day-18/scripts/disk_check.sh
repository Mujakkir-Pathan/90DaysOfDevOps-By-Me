#!/bin/bash


check_disk(){
	df -h /
}


check_memory() {
	free -h
}

main(){
	check_disk
	check_memory
}
main
	
