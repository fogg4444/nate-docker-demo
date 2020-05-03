#!/bin/bash

echo "======= START DOCKER CONTAINER ============="

CONTAINER_TAG=my-test-container

# Build from the dockerfile found in this directory
docker build --tag $CONTAINER_TAG .

echo "========== BUILD COMPLETE, NOW RUN CMD ============"

docker run -it $CONTAINER_TAG bash


# docker-compose build
# docker-compose up