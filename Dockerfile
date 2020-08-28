FROM debian:bullseye-slim

RUN apt-get update 

# basic setup
RUN apt-get install -y git

# install python
RUN apt-get install -y python3 python3-pip

# install deps for skbuild
RUN apt-get install -y cmake ninja-build && pip3 install scikit-build twine

# install deps for python module
RUN apt-get install -y python3-dev

# dddd
WORKDIR /home
