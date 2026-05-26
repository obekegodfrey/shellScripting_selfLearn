#!/bin/bash

echo "Checking users with root privileges..."

#1. users with UID 0(direct root access)
echo "Users with UID 0(direct root access)"
awk -F: '($3 == 0) {print $1}' /etc/passwd  

#2. users in the 'sudo group'(indirect root access via sudo)
echo "Users in the 'sudo group'(indirect root access via sudo)"
getent group sudo | awk -F: '{print $4}' | tr ',' '\n'

3. Users in files granted sudo privilages in the sudoers file
echo "Users with explicit sudo privileges in /etc/sudoers"
awk '/^[^#].*ALL={ALL}}/ {print $1}' /etc/sudoers

4. users in files under /etc/sudoers.d/ (additional sudo privilages )
echo "Users with sudo privileges in /etc/sudoers.d/"
for file in /etc/sudoers.d/*; do
  [ -f "$file" ] && awk '/^[^#].*ALL={ALL}}/ {print $1}' "$file"        
done