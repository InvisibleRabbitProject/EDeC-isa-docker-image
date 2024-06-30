FROM ubuntu:22.04

LABEL maintainer="support@invisible-rabbit.com"

WORKDIR /build

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        bison \
        build-essential \
        python3-pip \
        cmake \
        curl \
        flex \
        fonts-lyx \
        git \
        ditaa \
        pandoc \
        graphviz \
        default-jre \
        libcairo2-dev \
        libffi-dev \
        libgdk-pixbuf2.0-dev \
        libpango1.0-dev \
        libxml2-dev \
        libglib2.0-dev \
        libgif-dev \
        libwebp-dev \
        libzstd-dev \
        make \
        pkg-config \
        ruby \
        ruby-dev \
        ruby-full \
        gem \
        npm \
        texlive-latex-base \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-latex-extra \
        texlive-science &&\
    rm -rf /var/lib/apt/lists/* && \
    pip3 install sympy pyyaml jsonschema && \
    gem install \
        asciidoctor \
        asciidoctor-sail \
        asciidoctor-bibtex \
        asciidoctor-diagram \
        asciidoctor-lists \
        asciidoctor-mathematical \
        asciidoctor-pdf \
        asciidoctor-epub3 \
        asciidoctor-kroki \
        mathematical \
        citeproc-ruby \
        coderay \
        csl-styles \
        json \
        rghost \
        rouge \
        pygments.rb && \
    npm install -g wavedrom-cli@2.6.8 bytefield-svg@1.8.0
