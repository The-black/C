#!/bin/bash
set -e

echo "Starting docker container ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}"
docker run -p 127.0.0.1:3000:3000 --name ${ARTIFACT} -dit --net=host -e MONGO_URI="mongodb://localhost:27017" ${DOCKER_REGISTRY}/${PROJECT_NAME}/${ARTIFACT}
sleep 10 # For node to come up

echo "Verifying ${ARTIFACT} container health check"
curl -vvv http://127.0.0.1:3000/health  2|& grep 'System-Health: true' >/dev/null && echo "System-Health header verified OK" || { echo "Did not receive a valid System-Health header" ; exit 1 ; }
docker stop ${ARTIFACT}
