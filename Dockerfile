FROM ubuntu:bionic
MAINTAINER Egor Pronin <pronin.egor@gmail.com>

### VARIABLES ###
ENV LICENSE_NUMBER=20000
###

RUN apt-get -y update && \
  apt-get install -yq curl python git sudo

RUN git clone https://github.com/ONLYOFFICE/build_tools.git

WORKDIR /build_tools

COPY ./build_server_patch.py ./build_server_patch.py
RUN diff -u scripts/build_server.py build_server_patch.py | patch scripts/build_server.py -i -

RUN cd ./tools/linux/ && \
  python automate.py server
