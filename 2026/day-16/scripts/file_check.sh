#!/bin/bash

read -p "enter file name: " file
if [[ -f "$file" ]]; then
       echo "file exists"
else 
       echo "file dosen't exist"
fi       
