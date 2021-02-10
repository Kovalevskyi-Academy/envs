#!/bin/bash

TAG="us.gcr.io/artifacts-298104/base:v4"

docker build -f base.dockerfile -t "${TAG}" .
docker push "${TAG}"
