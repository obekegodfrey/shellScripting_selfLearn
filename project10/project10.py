#!/usr/bin/env python3
# The "Shebang" line tells the system to use the Python 3 interpreter to run this script.

import sys
# Imports the sys module to handle command-line arguments and exit statuses.
import os
# Imports the os module to interact with operating system features like user IDs.
import subprocess
# Imports subprocess to run external shell commands like 'apt-get'.

# Author:  Obeke Godfrey Vicent (Python Conversion)
# A comment identifying the script creator.

def main():
    # Defines the main function where the logic resides.

    if len(sys.argv) < 2:
    # Checks if the length of arguments is less than 2 (the script name is always index 0).
        print("Usage: Please provide software names as command line arguments.")
        # Prints instructions if no software names were provided.
        sys.exit(1)
        # Exits the script with an error status (1).

    if os.geteuid() != 0:
    # Gets the Effective User ID; if it's not 0, the user is not root.
        print("Please run from root user or with sudo privileges.")
        # Warns the user that administrative rights are required.
        sys.exit(2)
        # Exits the script with a specific error status (2).

    # Moving update outside the loop for efficiency as suggested in the bash review
    print("Updating package lists...")
    # Informs the user that the repository update is starting.
    subprocess.run(["apt-get", "update"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    # Runs 'apt-get update' and hides the output.

    for software in sys.argv[1:]:
    # Loops through all arguments starting from index 1 to the end.
        check_install = subprocess.run(["which", software], stdout=subprocess.DEVNULL)
        # Runs 'which' to check if the software binary is already in the system PATH.
        
        if check_install.returncode == 0:
        # If 'which' returns 0, the software is already installed.
            print(f"{software} is already installed.")
            # Notifies the user using an f-string for formatting.
        else:
            print(f"Installing {software}...")
            # Informs the user that installation is starting.
            
            install_cmd = subprocess.run(
                ["apt-get", "install", "-y", software],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL
            )
            # Executes the install command. '-y' automates confirmation.
            
            if install_cmd.returncode == 0:
            # Checks if the subprocess returned a success code (0).
                print(f"{software} has been installed successfully.")
                # Confirms success.
            else:
                print(f"Failed to install {software}. Check the name and try again.")
                # Alerts the user of a failure.

if __name__ == "__main__":
# A standard Python idiom that ensures the script runs only if executed directly.
    main()
    # Calls the main function.