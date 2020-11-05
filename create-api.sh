#!/bin/bash

set -e

REGION="us-east-1"

APIID=$(aws apigateway import-rest-api --cli-binary-format raw-in-base64-out --body file://music-dev-swagger.yaml --output text --query id --region ${REGION})

PARENTRESOURCEID=$(aws apigateway get-resources --rest-api-id ${APIID} --query "items[?path=='/'].id" --output text --region ${REGION})

#export PARENTRESOURCEID=$(aws apigateway get-resources --rest-api-id ${APIID} --output json --query 'items[0].id' --region us-east-1)
#aws apigateway put-integration --rest-api-id ${APIID} --resource-id ${PARENTRESOURCEID} --http-method GET --type HTTP --integration-http-method GET --uri 'http://orangevalleycaa.org/api/music/'

PUTINTEGRATIONID=$(aws apigateway put-integration --rest-api-id ${APIID} --resource-id ${PARENTRESOURCEID} --http-method GET --type HTTP --integration-http-method GET --uri 'http://orangevalleycaa.org/api/music/' --output text)

echo "ID NEW API GATEWAY: " $APIID

echo "ID NEW RESOURCE: " $PARENTRESOURCEID

echo "CONFIG RESOURCE: " $PUTINTEGRATIONID
