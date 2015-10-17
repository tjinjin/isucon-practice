#!/bin/bash

. ./rundeck/env.sh

curl -s -X DELETE -H "X-Rundeck-Auth-Token: $API_KEY" $END_POINT/api/1/job/$HOST_NAME | grep error || echo "deleted job."
