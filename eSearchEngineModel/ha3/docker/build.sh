#!/usr/bin/env bash

ver="latest"
name=aliesearch-ha3:${ver}
if [[ "$(docker images -q ${name} 2> /dev/null)" != "" ]]; then
    docker image rm ${name}
fi
docker build -f Dockerfile -t ${name} .