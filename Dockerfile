FROM ubuntu:22.04

LABEL maintainer="support@invisible-rabbit.com"

WORKDIR /build

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        python3-pip \
        cmake \
        curl \
        git \
        libffi-dev \
        make \
        ruby \
        ruby-dev \
        ruby-full \
        gem \
        npm &&\
    rm -rf /var/lib/apt/lists/* && \
    pip3 install sympy pyyaml jsonschema && \
    gem install \
        asciidoctor \
        asciidoctor-diagram \
        asciidoctor-pdf \
        asciidoctor-epub3 \
        coderay \
        rouge \
        pygments.rb && \
    npm install -g wavedrom-cli@2.6.8 bytefield-svg@1.8.0
