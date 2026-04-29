#!/bin/bash
# The "Shebang" tells the operating system to execute this file using the Bash shell.

# Author:  Obeke Godfrey Vicent
# A comment identifying the author of the script.

# This script demonstrates the use of command line arguments in bash.
# A comment explaining the script's educational purpose.


echo "Number of arguments provided: $#"
# $# is a special variable that stores the total count of arguments passed to the script.

echo "All arguments: $@"
# $@ represents all the arguments passed to the script as individual strings.

echo "This is my shell script name: $0"
# $0 stores the name (or path) of the script file itself.

echo "First argument: $1"
# $1 holds the first value typed after the script name.

echo "Second argument: $2"
# $2 holds the second value typed after the script name.

echo "Third argument: $3"
# $3 holds the third value typed after the script name.

if [ $# -eq 0 ];
# Starts a conditional 'if' statement checking if the count of arguments ($#) is equal to 0.
then
    echo "No arguments provided. Please provide at least one argument."
    # Runs if the user provided zero arguments.
else
    echo "You provided $# arguments."
    # Runs if the count of arguments is anything other than zero.
fi
# Ends the 'if' statement block.