#!/bin/bash

. ./rundeck/env.sh

curl -s -H "X-Rundeck-Auth-Token: $API_KEY"  $END_POINT/api/13/job/$HOST_NAME/run | grep error || echo "succeeded. look at slack!"
