#!/bin/bash

# Script to greet user based on current time

# Get current hour in 24-hour format (e.g., 13)
HOUR=$(date +%H)

# Time-based greeting logic
if [ "$HOUR" -lt 12 ]; then
  echo "Good morning"
elif [ "$HOUR" -lt 18 ]; then
  echo "Good afternoon"
else
  echo "Good evening"
fi

exit 0

