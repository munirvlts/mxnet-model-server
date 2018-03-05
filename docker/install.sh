#!/usr/bin/env bash

apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:certbot/certbot
apt-get update

apt-get install -y \
    build-essential \
    libatlas-base-dev \
    libopencv-dev \
    graphviz \
    python-dev \
    openjdk-8-jdk \
    nginx \
    protobuf-compiler \
    libprotoc-dev \
    python-certbot-nginx \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

cd /tmp && curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py

pip install gevent gunicorn mxnet-model-server
