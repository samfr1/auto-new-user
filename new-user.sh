#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne "0" ]; then
    echo "This script must be run as root." 1>&2
    exit 1
fi

# Create a new user with superuser privileges
useradd -m -s /bin/bash userroot

# Set the password for the new user
echo "userroot:passwordroot" | chpasswd

# Add the user to the sudo group
usermod -aG sudo userroot

# Retrieve the external IP address
external_ip=$(curl -s ifconfig.me)

# Port for connection (you can change it to your desired port)
port=22

# Print out the connection details
echo "Use the following details for connection:"
echo "IP Address: $external_ip"
echo "Username: userroot"
echo "Password: passwordroot"
echo "Port: $port"
