#1/bin/bash

service="sshd"

read -p "Do you want to check the status? (y/n): " condition

if [ $condition == "y" ]; then
	systemctl status $service
elif [ $condition == "n" ]; then
	echo "skipped"
else
        echo "unvalid text entered"
fi	
