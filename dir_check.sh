#!/bin/bash

# Script to check if a directory exists; create if not.

# Validate input
if [ -z "$1" ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

DIR="$1"  # Store the directory path

# Check for directory existence
if [ -d "$DIR" ]; then
  echo "Directory already exists: $DIR"
  exit 0
else
  mkdir -p "$DIR"  # Create the directory
  chmod 0755 "$DIR"  # Set permission
  echo "Directory created: $DIR"
  exit 0
fi

