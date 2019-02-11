#!/bin/bash
set -e

echo "Building docker container for ${ARTIFACT}"
docker build -t ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}:$TRAVIS_BUILD_NUMBER .

echo "Adding \"latest\" tag for ${ARTIFACT}"
docker tag  ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}:$TRAVIS_BUILD_NUMBER ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}:latest
