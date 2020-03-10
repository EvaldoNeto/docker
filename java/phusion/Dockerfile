FROM phusion/baseimage

LABEL MAINTAINER="Evaldo Neto"
LABEL EMAIL="<evaldo@becon.com.br>"

WORKDIR /opt/java

ENV JAVA_HOME /opt/java/jdk1.8.0_241

COPY ./jdk-8u241-linux-x64.tar.gz /opt/java/jdk-8u241-linux-x64.tar.gz

RUN tar -xvf ./jdk-8u241-linux-x64.tar.gz && \
    rm ./jdk-8u241-linux-x64.tar.gz && \
    echo "export JAVA_HOME=/opt/java/jdk1.8.0_241" >> ~/.bashrc && \
    echo "export PATH=${PATH}:${JAVA_HOME}/bin/" >> ~/.bashrc

CMD ["/sbin/my_init"]
