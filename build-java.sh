#!/bin/bash

TAG="us.gcr.io/artifacts-298104/java:v1"

docker build -f java.dockerfile -t "${TAG}" .
docker push "${TAG}"