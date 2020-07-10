FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl vim gnupg
# Add gosu for root stepdown.
# This key isn't certified but Docker seems to trust it so I guess that's ok.
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
        && arch="$(dpkg --print-architecture)" \
        && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch" \
        && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch.asc" \
        && gpg --verify /usr/local/bin/gosu.asc \
        && rm /usr/local/bin/gosu.asc \
        && chmod +x /usr/local/bin/gosu

CMD bash

