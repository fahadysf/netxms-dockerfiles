# Dockerfile for building NetXMS Console

FROM debian:jessie
MAINTAINER Serhii Moroz <frost.asm@gmail.com>

ENV VERSION=2.2.1

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get update && apt-get -y install curl apt-transport-https openjdk-7-jre && \
    curl -L http://www.netxms.org/download/nxmc/nxmc-${VERSION}-linux-gtk-x64.tar.gz -o - | tar xzv -C /

ENTRYPOINT [ "/nxmc/nxmc" ]