#!/bin/bash
# Shebang line: tells the system to execute this script using the Bash shell

##############################################
# Name: Obeke Godfrey Vicent
# Header comment block: identifies the author of the script
##############################################

echo "script to install git"
# Prints an introductory message describing what the script does

echo "Installation started"
# Prints a message to inform the user that the installation process is beginning

if [ "$(uname)" == "Linux" ];
# Starts an if-statement: runs 'uname' command to get the OS name
# 'uname' returns the operating system type (e.g. "Linux", "Darwin")
# $(...) captures the output of the command
# == "Linux" checks if the OS is Linux
# NOTE: 'uname' on Linux returns "Linux" (capital L) — this is correct

then
# Marks the beginning of the block to execute if the OS is Linux

echo "this is linux box, installing git"
# Prints a message confirming the OS is Linux and that git installation will proceed

sudo apt install git -y
# sudo        : runs the command with superuser/admin privileges
# apt install : uses the APT package manager to install a package
# git         : the package to be installed
# -y          : automatically answers "yes" to all prompts during installation

elif [ "$(uname)" == "Darwin" ];
# Checks an alternative condition if the first 'if' was false
# BUG: "Dorwin" is a typo — should be "Darwin" (capital D)
# 'uname' returns "Darwin" on macOS, not "Dorwin"
# This condition will NEVER be true as written

then
# Marks the beginning of the block to execute if the OS is "Dorwin" (intended: Darwin/macOS)

echo "This is not linux box"
# Prints a message clarifying this is not a Linux system

echo "this is Macos"
# Prints a message identifying the OS as macOS

brew install git
# Uses Homebrew (macOS package manager) to install git
# NOTE: 'brew' must already be installed on the macOS system for this to work

else
# Catches all other cases where the OS is neither Linux nor Darwin (e.g. Windows, unknown OS)

echo "not installing"
# Prints a message indicating git will not be installed on unrecognized systems

fi
# Ends the if-elif-else block ('fi' is 'if' spelled backwards — standard Bash syntax)