# Dockerfile
FROM biga8/ubuntu-java-8

LABEL AUTHOR="Evaldo Neto"
LABEL EMAIL="evaldo@becon.com.br"

ENV MAVEN_VERSION 3.6.3
ENV MAVEN_HOME /opt/maven

WORKDIR /opt

COPY ./apache-maven-3.6.3-bin.tar.gz /opt/apache-maven-3.6.3-bin.tar.gz

RUN tar -xvf /opt/apache-maven-3.6.3-bin.tar.gz --one-top-level=maven --strip-components=1 && \
    rm /opt/apache-maven-3.6.3-bin.tar.gz && \
    ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn

VOLUME /root/.m2
