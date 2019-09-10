#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-musicoinpay/musicoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/musicoind docker/bin/
cp $BUILD_DIR/src/musicoin-cli docker/bin/
cp $BUILD_DIR/src/musicoin-tx docker/bin/
strip docker/bin/musicoind
strip docker/bin/musicoin-cli
strip docker/bin/musicoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
