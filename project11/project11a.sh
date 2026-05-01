#!/bin/bash
# Name: Obeke Godfrey Vicent
# This script will display inputs from the user

echo "While demo....."
while read -r line; 
do
    echo "You entered: $line"
done < test.txt