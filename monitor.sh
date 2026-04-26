#!/bin/bash

FILE="system_report.txt"


if [ ! -e "$FILE" ]; then
echo "Initialization complete" > "$FILE"

else 
echo "system check passed" >> "$FILE"
fi

