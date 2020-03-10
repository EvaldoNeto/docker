FROM ubuntu:18.04

LABEL MAINTAINER="Evaldo Neto"
LABEL EMAIL="<evaldo@becon.com.br>"

WORKDIR /opt/java

COPY ./jdk-8u241-linux-x64.tar.gz /opt/java/jdk-8u241-linux-x64.tar.gz

ENV JAVA_HOME /opt/java/jdk1.8.0_241
ENV PATH ${PATH}:${JAVA_HOME}/bin

RUN tar -xvf ./jdk-8u241-linux-x64.tar.gz && \
    rm ./jdk-8u241-linux-x64.tar.gz
