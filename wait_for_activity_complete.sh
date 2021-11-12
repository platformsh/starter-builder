#!/usr/bin/env bash

echo "Waiting for activity ($3) to complete on $1/$2"
ACTIVITY_STATE="in_progress"
until [ $ACTIVITY_STATE == "complete" ];do
    sleep 10
    ACTIVITY_STATE=$(~/.platformsh/bin/platform project:curl -p $1 environments/$2/activities/$3 | jq -r '.state')
    echo "Activity state: $ACTIVITY_STATE"
done
