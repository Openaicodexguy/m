FROM ubuntu:16.04
LABEL maintainer="wingnut0310 <wingnut0310@gmail.com>"

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV GOTTY_TAG_VER v1.0.1

RUN apt-get -y update && \
    apt-get install -y npm && \
    npm i \
    | npm run build && \
    npm run serve \
    apt-get clean && \
    rm -rf /var/lib/apt/lists*
