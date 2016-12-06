FROM golang:1.6

MAINTAINER minimum@cepave.com

ARG BRANCH=master
ENV BRANCH=${BRANCH:-master} REPO=github.com/Cepave/open-falcon-backend
ENV WORKPATH=${GOPATH}/src/${REPO}

RUN mkdir -p ${WORKPATH}

COPY docker-entrypoint.sh /
CMD /docker-entrypoint.sh
