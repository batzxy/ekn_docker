#!/bin/bash

# Check if package openssl is installed. If not, install it.
dpkg -l | grep -qw openssl || sudo apt-get install -yyq openssl

echo "What do you want to name the .key and .crt files?"
echo "Example: Naming 'MyFiles' generates 'MyFiles.key' and 'MyFiles.crt'"
read -p "Filename: " INPUT

echo "For how long do you want to keep the expiry date?"
echo "Example: 365"
read -p "Number of days: " DAYS

# Generate Key File of RSA 4096 bit
openssl genrsa 4096 > $INPUT.key
chmod 400 $INPUT.key
openssl req -new -x509 -nodes -sha256 -days $DAYS -key $INPUT.key -out $INPUT.crt

# List the files
echo "The files were generated in the current working directory."
ls -l | grep $INPUT

#EOF
