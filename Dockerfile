FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install cmake
RUN apt-get -y install zip