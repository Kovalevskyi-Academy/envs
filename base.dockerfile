FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

ADD .vimrc /root/.vimrc

RUN apt-get update && apt-get install --no-install-recommends -y \
    vim \
    curl \
    tree \
    git \
    apt-transport-https \
    ca-certificates \
    gnupg \
# Install gcloud
    && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
    | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl --silent --fail --show-error -L https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
    && apt-get update \
    && apt-get install -y google-cloud-sdk \
    && rm -rf /var/lib/apt/lists/* \
# Git config
    && git config --global user.name "default_name default_name" \
    && git config --global user.email "default@example.com" \
# Install vim plugins
    && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
    vim +PluginInstall +qall
