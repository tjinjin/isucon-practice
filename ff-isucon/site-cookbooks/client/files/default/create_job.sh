#!/bin/bash

. ./rundeck/env.sh

sed "s/@IP_ADDRESS@/$IP_ADDRESS/g" rundeck/template_job.xml > rundeck/define_job.xml
sed -i "s/@HOST_NAME@/$HOST_NAME/g" rundeck/define_job.xml

curl -s -H "X-Rundeck-Auth-Token: $API_KEY" -F xmlBatch=@"./rundeck/define_job.xml" $END_POINT/api/9/jobs/import | grep error || echo "succeeded."
