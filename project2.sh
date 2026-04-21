#!/bin/bash
# Shebang line: tells the system to run this script using the Bash shell

###########################################################################
# Name: Obeke Godfrey Vicent
# Header comment block: identifies the author of the script
###########################################################################

disk_list=$(df -h)
# Runs 'df -h' (disk filesystem in human-readable format) and stores the full output in variable 'disk_list'

echo "$disk_list"
# Prints the full disk usage report stored in 'disk_list' to the terminal

echo "Check disk in Linux system"
# Prints a label/header message to indicate what the script is doing

disk_size=$(df -h | grep "/dev/sda6" | awk '{print $5}' | cut -d '%' -f1)
# df -h         : lists all disk usage in human-readable format
# grep "/dev/sda6" : filters the line containing the partition /dev/sda6
# awk '{print $5}' : extracts the 5th column, which is the usage percentage (e.g. "45%")
# cut -d '%' -f1   : removes the '%' sign, leaving just the number (e.g. "45")
# Result is stored in variable 'disk_size'

echo "$disk_size% of disk is filled"
# Prints the current disk usage percentage to the terminal

if [ "$disk_size" -gt 12 ];
# Starts an if-statement: checks if 'disk_size' is numerically greater than 12
# "$disk_size" is quoted to avoid errors if the variable is empty

then
# Marks the beginning of the block to execute if the condition above is true

    echo "disk is utilized more than 12%, expand disk or delete files soon"
    # Prints a warning message if disk usage exceeds 12%

else
# Marks the block to execute if the condition above is false (disk usage is 12% or below)

    echo "enough disk is available"
    # Prints a reassurance message if disk usage is within safe limits

fi
# Ends the if-else block ('fi' is 'if' spelled backwards — standard Bash syntax)