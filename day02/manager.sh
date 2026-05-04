#!/bin/bash

ACTION=$1

if [ "$ACTION" == "create" ]; then
echo "Creating log files..."
for i in 1 2 3; do 
touch "server_log_${i}.txt"
done 
echo "File created successfully."
elif [ "$ACTION" == "clean" ]; then 
echo "Cleaning up log file..."
rm server_log*.txt
echo "Clean complete."
else 
echo "Invalid input. Usage: ./manager.sh [create|clean]"
fi
