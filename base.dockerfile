FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y vim
RUN apt install -y curl
RUN apt install -y tree

# Install git
RUN apt install -y git
RUN git config --global user.name "default_name default_name"
RUN git config --global user.email "default@example.com"

# Install gcloud
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN apt-get install -y apt-transport-https ca-certificates gnupg
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && apt-get install -y google-cloud-sdk

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
