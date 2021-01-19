#!/bin/bash

TAG="us.gcr.io/artifacts-298104/base"

docker build -f base.dockerfile -t "${TAG}" .
docker push "${TAG}"