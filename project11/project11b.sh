#!/bin/bash

echo "Welcome to service status check script"
read -p "Enter the service name to check its status: " service_name
service=$(echo "$service_name" | xargs) # Remove leading/trailing whitespace
if [ -z "$service" ]; then
    echo "No service name provided. Exiting."
else
    systemctl status "$service" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "The service '$service' is running."
    else
        echo "The service '$service' is not running."
    fi
fi