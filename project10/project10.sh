#!/bin/bash
# The "Shebang" line tells the system to use the Bash interpreter to run this script.

# Author:  Obeke Godfrey Vicent
# A comment identifying the script creator.

# Installing multiple packages using apt-get
# A comment describing the primary purpose of the script.

if [[ $# -eq 0 ]]; 
# Checks if the number of command-line arguments ($#) is equal to 0.
then
    echo "Usage: Please provide software names as command line arguments."
    # Prints instructions if the user forgot to list any packages.
    exit 1
    # Exits the script with an error status (1).
fi 

if [[ $(id -u) -ne 0 ]]; 
# Executes 'id -u' to get the User ID and checks if it is NOT equal to 0 (0 is the ID for Root).
then
    echo "Please run from root user or with sudo privileges."
    # Warns the user that administrative rights are required for apt-get.
    exit 2
    # Exits the script with a specific error status (2).
fi

for software in $@
# Starts a loop that iterates through every argument ($@) provided by the user.
do
    if which $software > /dev/null 
    # Uses the 'which' command to see if the binary exists; redirects output to /dev/null to keep the terminal clean.
    then
        echo "$software is already installed."
        # Notifies the user if the software is already present on the system.
    else
        echo "Installing $software..."
        # Informs the user that the installation process is starting.
        
        apt-get update && apt-get install -y $software -y &> /dev/null
        # Updates the package list and installs the software. 
        # '-y' automatically answers "yes" to prompts. 
        # '&> /dev/null' hides all output (stdout and stderr).

        if [[ $? -eq 0 ]];
        # Checks the exit status ($?) of the previous command (0 means success).
        then
            echo "$software has been installed successfully."
            # Confirms successful installation.
        else
            echo "Failed to install $software. Please check the package name and try again."
            # Alerts the user if the package name was wrong or the network failed.
        fi
    fi
done
# Ends the 'for' loop.