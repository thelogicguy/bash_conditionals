#!/bin/bash

# Script to verify the existence of a backup file in /backups

# Check if a filename was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <backup_filename>"
  exit 1
fi

FILENAME="$1"
FILE="/backups/$FILENAME"  # Construct the full path

# Check if the backup file exists
if [ -f "$FILE" ]; then
  echo "Backup OK: $FILE exists."
  exit 0
else
  echo "Backup missing: $FILE not found."
  exit 2
fi

