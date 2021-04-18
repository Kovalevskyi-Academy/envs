#!/bin/bash
TAG="us.gcr.io/artifacts-298104/java:v17"

docker build --no-cache -f java.dockerfile -t "${TAG}" .
docker push "${TAG}"
