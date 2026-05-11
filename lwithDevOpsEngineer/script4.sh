#!/bin/bash

servers=("server1" "server2" "server3")
for server in "${servers[@]}"; do
    echo "Checking $server..."
    ssh -o ConnectTimeout=10 devops@"$server" "df -h | grep /dev; free -m; uptime"
done 