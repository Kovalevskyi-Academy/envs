# these are notes on building Docker images or Google Cloud Shell 

## Howe to build & push image Docker
1. [gcloud auth configure-docker](https://cloud.google.com/sdk/gcloud/reference/auth/configure-docker)
2. build one of these containers:
   - docker build base.dockerfile -t us.gcr.io/artifacts-298104/base
   - docker build java.dockerfile -t us.gcr.io/artifacts-298104/java
3. push the image:
   - docker push us.gcr.io/artifacts-298104/base
   - docker push us.gcr.io/artifacts-298104/java
 
**Attention!** Do not forget change base image hash in java.dockerfile!

## Howe to build & push Google Cloud Shell
