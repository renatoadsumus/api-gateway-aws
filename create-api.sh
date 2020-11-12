#!/bin/bash

set -e

REGION="us-east-1"

#APIID=$(aws apigateway import-rest-api --cli-binary-format raw-in-base64-out --body file://music-dev-swagger.yaml --output text --query id --region ${REGION})

APIID=$(aws apigateway import-rest-api --body file://api-edge-logon-oca.yaml --output text --query id --region ${REGION})

#PARENTRESOURCEID=$(aws apigateway get-resources --rest-api-id ${APIID} --query "items[?path=='/'].id" --output text --region ${REGION})

#PUTINTEGRATIONID=$(aws apigateway put-integration --rest-api-id ${APIID} --resource-id ${PARENTRESOURCEID} --http-method GET --type HTTP --integration-http-method GET --uri 'http://orangevalleycaa.org/api/music/' --output text --region ${REGION})

APIDEPLOY=$(aws apigateway create-deployment --rest-api-id ${APIID} --stage-name dev --region ${REGION}


echo "ID NEW API GATEWAY: " $APIID

#echo "ID NEW RESOURCE: " $PARENTRESOURCEID

#echo "CONFIG RESOURCE: " $PUTINTEGRATIONID

echo "DEPLOY: " $APIDEPLOY
