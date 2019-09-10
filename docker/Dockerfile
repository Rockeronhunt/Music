FROM debian:stretch
LABEL maintainer="MUSICOIN Developers <dev@musicoin.org>"
LABEL description="Dockerised MUSICOINCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
