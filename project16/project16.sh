#!/bin/bash

URL="https://www.github.com/obekegodfrey"
#echo "%{http_code}"
response=$(curl -s -w "%{http_code}" $URL)

http_code=$(tail -n1 <<< "$response") #get the last line which is the http code
content=$(sed '$d' <<< "$response") #get all but the last line which contains the status code

echo "HTTP Status Code: $http_code"
if [ $http_code == 200 ]; 
then
    echo "Request was successful. Response body:"
    echo "$content"
else
    echo "Request failed with status code $http_code"
fi
echo "$content"