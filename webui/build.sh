#!/usr/bin/env bash
PROJECT="docker.io/fahadysf/netxms-webui"
if [ $# -eq 0 ]
  then
    tag='latest'
  else
    tag=$1
fi
if command -v podman &> /dev/null 
then
    podman build -t $PROJECT:$tag .
else
    docker build -t $PROJECT:$tag .
fi
