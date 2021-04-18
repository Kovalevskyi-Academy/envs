#!/bin/bash

TAG="us.gcr.io/artifacts-298104/base:v8"

docker build --no-cache -f base.dockerfile -t "${TAG}" .
docker push "${TAG}"
