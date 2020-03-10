FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install build-essential && \
    apt-get -y install cmake && \
    apt-get -y install zip