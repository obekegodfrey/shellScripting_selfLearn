#!/bin/bash

# Define the mount point or device
MOUNT_POINT="/mnt/msl/docker-desktop/docker-desktop-data/data-user-distro" # Change to your mount point(The directory where the disk is mounted)
DEVICE="/dev/sdb1" # Change to your device name (The disk you want to check)

# Function to check if disk is in use
# This function checks if there are any processes using files on the disk using the lsof +D command. If there are processes using the disk, it lists them and returns 1 (indicating the disk is in use). If there are no processes using the disk, it returns 0 (indicating the disk is not in use).
# If the disk is in use, it will print an error message and return a non-zero exit code(1), preventing unmounting.

check_disk_usage() {
    lsof +D "$MOUNT_POINT" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Error: The disk at $MOUNT_POINT is currently in use by the following processes: Please close all files and processes accessing the disk before unmounting."
        lsof +D "$MOUNT_POINT"
        return 1
    else
        return 0
    fi
}

#The script first checks whether the disk is mounted using mount | grep.
# If the disk is mounted, it calls the check_disk_usage function to see if any processes are using the disk. If the disk is in use, it exits with an error message. If the disk is not in use, it proceeds to unmount the disk using umount.
# If the disk is not mounted, it prints a message indicating that the disk is not mounted and exits.
if mount | grep "$MOUNT_POINT" > /dev/null; then
    echo "The disk at $MOUNT_POINT is currently mounted."
    check_disk_usage
    if [ $? -eq 0 ]; then
        echo "Unmounting the disk at $MOUNT_POINT..."
        umount "$MOUNT_POINT"
        if [ $? -eq 0 ]; then
            echo "Disk unmounted successfully."
        else
            echo "Error: Failed to unmount the disk at $MOUNT_POINT."
            exit 1
        fi
    else
        exit 1
    fi
else
    echo "The disk at $MOUNT_POINT is not mounted."
    exit 1
fi