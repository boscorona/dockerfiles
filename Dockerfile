FROM ubuntu:14.04

MAINTAINER hello.nbosco@gmail.com

# Install Python
RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    git -y \
    vim -y \
    curl \
    python-dev \
    python-pip \
    && pip install virtualenv \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && echo "runtime vimrc" > ~/.vimrc && mkdir ~/.vim && cd ~/.vim && git clone https://github.com/nbosco/vim_starter_kit.git . && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/
