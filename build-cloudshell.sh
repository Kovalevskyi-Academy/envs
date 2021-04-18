#!/bin/bash

TAG="us.gcr.io/artifacts-298104/cloudshell:v1"

docker build --no-cache -f cloudshell.dockerfile -t "${TAG}" .
docker push "${TAG}"
