FROM ubuntu:14.04

MAINTAINER hello.nbosco@gmail.com

# Install Python
RUN sudo apt-get update
RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    python-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/
    
# Install vim and update
RUN sudo apt-get update \
    sudo apt-get install vim \
    echo "runtime vimrc" > ~/.vimrc && mkdir ~/.vim && cd ~/.vim && git clone https://github.com/nbosco/vim_starter_kit.git . && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall

# Install pip and virtual environment 
RUN sudo apt-get install python-pip build-essential \
    sudo pip install --upgrade pip \
    sudo pip install --upgrade virtualenv 
