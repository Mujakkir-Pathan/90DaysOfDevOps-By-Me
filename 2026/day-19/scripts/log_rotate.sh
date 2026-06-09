#!/bin/bash

LOG_DIR=$1

if [ -d "$LOG_DIR" ];
then	
	echo "Directory exists"
else	
	echo "Directory does not exist"
	exit 1
fi

COUNT="$(find "$LOG_DIR" -name "*.log" -mtime +7 | wc -l)"

echo "old log files: $COUNT"

find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \;

find "$LOD_DIR" -name "*.gz" -mtime +30 -delete



