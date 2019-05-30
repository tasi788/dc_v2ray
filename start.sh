#!/bin/bash

wget https://get.docker.com -O get-docker.sh
sh get-docker.sh

docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:$PWD" \
    -w="$PWD" \
    docker/compose:1.24.0 up -d