FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y vim
RUN apt install -y git

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
