#!/usr/bin/env python3
# The "Shebang" line tells the system to use the Python 3 interpreter.

import sys
# Imports the sys module, which provides access to variables used or maintained by the interpreter.

# Author:  Obeke Godfrey Vicent (Python Conversion)
# A comment identifying the author of the script.

# This script demonstrates the use of command line arguments in Python.
# A comment explaining the purpose of the script.

# In Python, sys.argv is a list containing the command line arguments.
# sys.argv[0] is always the name of the script.

print(f"Number of arguments provided: {len(sys.argv) - 1}")
# len(sys.argv) gives the total count. We subtract 1 to exclude the script name itself.

print(f"All arguments: {' '.join(sys.argv[1:])}")
# sys.argv[1:] gets all items after the script name. '.join' turns the list into a string.

print(f"This is my shell script name: {sys.argv[0]}")
# sys.argv[0] functions exactly like $0 in Bash.

# We use a try-except block or index checks to avoid "IndexError" if arguments are missing.
print(f"First argument: {sys.argv[1] if len(sys.argv) > 1 else 'None'}")
# Checks if the list has at least index 1 before trying to print it.

print(f"Second argument: {sys.argv[2] if len(sys.argv) > 2 else 'None'}")
# Checks if the list has at least index 2.

print(f"Third argument: {sys.argv[3] if len(sys.argv) > 3 else 'None'}")
# Checks if the list has at least index 3.

if len(sys.argv) - 1 == 0:
# Compares the argument count (minus the script name) to zero.
    print("No arguments provided. Please provide at least one argument.")
    # Runs if no user input was detected.
else:
    print(f"You provided {len(sys.argv) - 1} arguments.")
    # Runs if the user provided one or more arguments.