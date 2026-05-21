#!/bin/bah

#Define colors
RESET="\033[0m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"

#MySQL credentials
MYSQL_USER="root"  #Replace with your MySQL username
MYSQL_PASS="password" #Replace with your MySQL password
MYSQL_HOST="localhost"  #Change if not running MySQL locally

#Run MySQL SHOW PROCESSLIST command and format output
RESULT=$(mysql -u $MYSQL_USER -p$MYSQL_PASS -h $MYSQL_HOST -e "SHOW PROCESSLIST;" 2>/dev/null)

#Check for errors
if [ $? -ne 0 ]; then
    echo -e "${RED}Error connecting to MySQL. Please check your credentials and try again.${RESET}"
    exit 1
fi   

#process and colorize output
echo -e "${CYAN}--- SHOW PROCESSLIST ---${RESET}"
echo "$RESULT" | while IFS= read line; do
    if [[ "$line" == *"Sleep"* ]]; then
        echo -e "${YELLOW}$line${RESET}"
    elif [[ "$line" == *"Query"* ]]; then
        echo -e "${GREEN}$line${RESET}"
    elif [[ "$line" == *"Locked"* ]]; then
        echo -e "${RED}$line${RESET}"
    else
        echo "$line"
    fi
done