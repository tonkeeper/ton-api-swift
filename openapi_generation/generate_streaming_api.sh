#!/bin/bash
swift run swift-openapi-generator generate \
    --mode types --mode client \
    --output-directory ./Packages/ton-streaming-api/Sources/Generated \
    ./Packages/ton-streaming-api/openapi_generation/openapi.yml