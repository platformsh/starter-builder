#!/usr/bin/env bash

PROJECT_ID=${{ steps.projectid.outputs.result }}
ACTIVITY_ID=${{ steps.getactivity.outputs.id }}

ACTIVITY_STATE="in_progress"
until [ $ACTIVITY_STATE == "complete" ];do
    sleep 10
    ACTIVITY_STATE=$(~/.platformsh/bin/platform project:curl -p $PROJECT_ID environments/$UPDATE_ENVIRONMENT/activities/$ACTIVITY_ID | jq -r '.state')
    echo "Activity state: $ACTIVITY_STATE"
done
