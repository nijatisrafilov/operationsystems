#!/bin/bash

echo "Starting process..."

# TODO 1: Start sleep 60 in the background
sleep 60 &

# TODO 2: Store the process PID using $!
PID=$!

echo "Process PID: $PID"

# TODO 3: Check whether the process is running
if ps -p "$PID" > /dev/null; then
    echo "Process $PID is running."
else
    echo "Process $PID is not running."
fi

# TODO 4: Stop the process using kill -TERM
echo "Stopping process $PID..."
kill -TERM "$PID"

# Wait one second
sleep 1

# TODO 5: Check whether the process has stopped
if ps -p "$PID" > /dev/null; then
    echo "Process $PID is still running."
else
    echo "Process $PID has stopped successfully."
fi
