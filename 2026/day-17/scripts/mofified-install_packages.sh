#!/bin/bash

package=("nginx" "curl" "wget")

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

for pkg in "${package[@]}";do
	dpkg -s $pkg &>/dev/null || { echo "$pkg installing..."; sudo apt install $pkg -y 1>/dev/null; }
done

for pkg in "${package[@]}";do
	 dpkg -s $pkg &>/dev/null && echo " STATUS - $pkg is INSTALLED " || echo " STATUS - $pkg is NOT INSTALLED "
done
