FROM ubuntu:18.04
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get upgrade -y --allow-unauthenticated && \
    apt-get update && \
    apt-get install -y --allow-unauthenticated \
        git \
        python3 \
        python3-pip \
        libgit2-dev \
        software-properties-common \
        unzip \
        vim \
        wget \
        zip \
        zlib1g-dev \
        locales \
        gettext-base \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN pip3 install -U pip
RUN pip3 install mic reprozip