FROM gcr.io/cloudshell-images/cloudshell:cloud-shell-v20210406-101205

ARG DEBIAN_FRONTEND=noninteractive

ADD .vimrc /root/.vimrc

RUN apt-get update && apt-get install --no-install-recommends -y \     
    tree \    
# Git config
    && git config --global user.name "default_name default_name" \
    && git config --global user.email "default@example.com" \
# Install vim plugins
    && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
    vim +PluginInstall +qall
