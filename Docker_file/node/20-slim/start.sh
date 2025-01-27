#!/bin/sh

if [ -n "$SECOND_CMD" ]; then
    echo "Executing second startup command: $SECOND_CMD"
    exec $SECOND_CMD
elif [ -n "$STARTUP_CMD" ]; then
    echo "Executing startup command: $STARTUP_CMD"
    exec $STARTUP_CMD
else
    echo "No startup command provided. Starting Node.js REPL..."
    exec node
fi
