#!/bin/bash
set -e

echo "Preparing gcloud env for Docker"
echo "$GCLOUD_SERVICE_KEY" | base64 --decode -i > ${HOME}/gcloud-service-key.json
gcloud --quiet auth activate-service-account --key-file ${HOME}/gcloud-service-key.json
gcloud --quiet config set project kube-225910
gcloud --quiet auth configure-docker

echo "Pushing docker container ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}"
docker push ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}
