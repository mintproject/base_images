FROM python:3.7-buster

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get upgrade -y --allow-unauthenticated && \
    apt-get update && \
    apt-get install -y --allow-unauthenticated \
        git \
        libgit2-dev \
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
RUN pip install -U pip
RUN pip install reprozip
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN pip install mic