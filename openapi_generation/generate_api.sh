#!/bin/bash
swift run swift-openapi-generator generate \
    --mode types --mode client \
    --output-directory ./Packages/ton-api/Sources/Generated \
    ./Packages/ton-api/openapi_generation/openapi.yml