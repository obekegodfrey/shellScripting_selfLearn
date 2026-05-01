#!/bin/bash
# Author: Obeke Godfrey Vicent

# This script will display inputs from the user
read -p "Enter your name: " name
read -p "Enter your password: " password

echo "Your name is: $name"
echo "Your password is: $password"

read -p "It will timeout in 10 seconds: " -t 10
