# Dockerfile for building NetXMS Console

FROM debian:bullseye
LABEL maintainer "Fahad Yousuf <fahadysf@gmail.com>"

ENV MAJOR=3
ENV MINOR=9
ENV RELEASE=420

ENV VERSION=${MAJOR}.${MINOR}.${RELEASE}

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get update && apt-get -y install curl apt-transport-https openjdk-11-jre

RUN curl -L https://www.netxms.org/download/releases/${MAJOR}.${MINOR}/nxmc-${VERSION}-linux-gtk-x64.tar.gz -o - | tar xzv -C /


ENTRYPOINT [ "/nxmc/nxmc" ]