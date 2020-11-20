#!/bin/bash

set -e

REGION="us-east-1"

APIUPDATE=$(aws apigateway put-rest-api --rest-api-id $APIID --mode overwrite --body 'file://api-edge-logon-oca-update.yaml' --region ${REGION})

echo "UPDATE API: " $APIUPDATE
