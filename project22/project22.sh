#!/bin/bash

#Function to display usage
show_usage(){
    echo "Usage: $0 <city_name>"
    echo "Example: $0 London"
}

# Check if the city is provided
CITY="$1"
if [ -z "$CITY" ]; then
    echo "Error: City name is required."
    show_usage
    exit 1
fi

#Displaying a loading message
echo "Fetching weather data for $CITY..."   

#Fetch weather data
WEATHER=$(curl -s "https://wttr.in/${CITY}?format=1")

#Check if the response is valid
if [[ "$WEATHER" == *"Unknown location"* ]]; then
    echo "Error: Unable to fetch weather data for $CITY. Please check the city name and try again."
    exit 1
fi  

# Display the weather details
echo "=========================================="
echo "              WEATHER REPORT              "
echo "=========================================="
echo "City: $CITY"
echo "Weather: $WEATHER"
echo "=========================================="       

#Suggest viewing the full report
echo "For a detailed weather report, visit: https://wttr.in/${CITY}"
echo "Current weather in $CITY: $WEATHER"  
