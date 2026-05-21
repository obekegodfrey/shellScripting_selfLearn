#!/bin/bash
# Author: Obeke Godfrey Vicent

backup_dirs=("/etc" "/home" "/var/log")
dest_dir="/root/backup"
mkdir -p "$dest_dir"
backup_date=$(date +"%Y-%m-%d")
#backup_file="$dest_dir/backup_$backup_date.tar.gz"

echo "Starting backup of directories: ${backup_dirs[*]}"
#tar -czf "$backup_file" "${backup_dirs[@]}" 

for i in "${backup_dirs[@]}"; do
sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
    if [ -d "$i" ]; then
        echo "Successfully backed up $i"
    else
        echo "Failed to back up $i"
    fi
    cp /tmp/$i-$backup_date.tar.gz $dest_dir/
    if [ $? -eq 0 ]; then
        echo "Successfully copied backup of $i to $dest_dir"
    else
        echo "Failed to copy backup of $i to $dest_dir"
    fi
done

sudo rm /tmp/*.gz
echo "Backup completed. Backup files are located in $dest_dir"