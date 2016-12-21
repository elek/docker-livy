#!/bin/bash
DOCKER_TAG=${DOCKER_TAG:-latest}
docker build -t elek/livy:$DOCKER_TAG .   
