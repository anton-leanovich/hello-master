FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install build-essential && \
    cmake && \
    zip