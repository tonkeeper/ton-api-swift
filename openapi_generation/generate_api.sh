#!/bin/bash
openapi-generator generate -i ./openapi_generation/tonapi.yml -g swift5 -o ./Packages/ton-api \
--additional-properties=\
projectName=TonAPI,\
swiftUseApiNamespace=false,\
enumUnknownDefaultCase=true,\
responseAs=AsyncAwait,\
useSPMFileStructure=true,\
validatable=false