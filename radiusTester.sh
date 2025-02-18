#!/bin/bash
# Radius test script
# Coder: Matt Beaudin
# Purpose: To test a RADIUS endpoint to determine how often a client experiences connection delays.
i=0
echo $i
while true
do
        echo "---"
        date --iso-8601=ns --utc
        time  (echo "User-Name=<USERNAME>,User-Password=<PASSWORD> " | radclient <SERVER> auth Testme -t 15)
        sleep 2
        i=$((i+1))
        echo "Request Number" $i
        echo "Hit CTRL+C to stop"
done
