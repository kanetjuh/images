#!/bin/bash

# Check if the environment variable $ALVKT(JAR_STARTUP) is set
if [ -n "$ALVKT(STARTUP)" ]; then
  # If it's set, run the specified startup command (e.g., running node or another script)
  echo "Running with custom startup: $ALVKT(STARTUP)"
  exec $ALVKT(STARTUP)
else
  # If not set, run the default Node.js server
  echo "Running default Node.js server..."
  exec node server.js
fi
