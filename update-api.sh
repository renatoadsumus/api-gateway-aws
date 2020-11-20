#!/bin/bash

set -e

REGION="us-east-1"

APIUPDATE=$(aws apigateway put-rest-api --rest-api-id rrv7zl4bf6 --mode overwrite --body 'file://api-edge-logon-oca-update.yaml' --region ${REGION})
