#!/bin/bash

if [ "$1" == "" ]
then
	echo "Please enter your server IP:"
	read IP
else
	IP=$1
fi

cd ~
mkdir -p .chrome1
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --ignore-certificate-errors  --user-data-dir=$(pwd)/.chrome1 --proxy-server=https://$IP:443 


