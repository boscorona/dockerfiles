FROM ubuntu:14.04

MAINTAINER hello.nbosco@gmail.com

# Install Python
RUN apt-get update
RUN apt-get update && apt-get install -y --no-install-recommends \
    python \
    python-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ \ 
    # Install pip and virtual environment 
    && apt-get install python-pip python-dev build-essential \
    && sudo pip install --upgrade pip \
    && sudo pip install --upgrade virtualenv 
    
