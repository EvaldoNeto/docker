FROM biga8/ubuntu-java-8

LABEL AUTHOR="Evaldo Neto"
LABEL EMAIL="evaldo@becon.com.br"

ENV JETTY_VERSION "9.4.41.v20210516"
ENV JETTY_HOME /opt/jetty

WORKDIR /opt

COPY jetty-distribution-${JETTY_VERSION}.tar.gz ./jetty.tar.gz

RUN tar -xvf /opt/jetty.tar.gz --one-top-level=jetty --strip-components=1 && \
    rm /opt/jetty.tar.gz
