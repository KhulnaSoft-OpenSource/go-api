#!/usr/bin/env bash

# This script will generate the OpenAPI Go client code for the KhulnaSoft API
# - Requires Docker to run

API_VERSION="v1.47.0-beta.1"

docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli:v7.0.0 generate \
    -i https://raw.githubusercontent.com/kulnasoft-opensource/api/${API_VERSION}/swagger.yaml \
    -g go \
    -o /local/client \
    -p packageName=client \
    --git-user-id kulnasoft-opensource \
    --git-repo-id go-api \
    --skip-validate-spec
