#!/bin/bash

# Script to check disk space and alert if free space is below a threshold.

# Validate input argument
if [ -z "$1" ]; then
  echo "Usage: $0 <threshold_percentage>"
  exit 1  # Exit with error if no argument is given
fi

THRESHOLD=$1  # Assign the first argument to THRESHOLD variable

# Get the used disk space percentage for root (/)
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

# Calculate free space from 100 - used space
FREE=$((100 - USAGE))

# Compare free space with threshold
if [ "$FREE" -lt "$THRESHOLD" ]; then
  echo "Warning: Free space on / is below ${THRESHOLD}%."
  exit 2
else
  echo "All good. Free space is ${FREE}%."
  exit 0
fi

