#!/bin/bash

# Script to check if a service is active, and restart it if not.

# Check if a service name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <service_name>"
  exit 1
fi

SERVICE=$1  # Store the service name

# Check the service status using systemctl
STATUS=$(systemctl is-active "$SERVICE")

# Restart if inactive
if [ "$STATUS" != "active" ]; then
  echo "Service $SERVICE is inactive. Restarting..."
  sudo systemctl restart "$SERVICE"  # Restart the service
  echo "Service restarted."
  exit 2
else
  echo "Service is running."
  exit 0
fi

