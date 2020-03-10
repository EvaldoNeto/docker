FROM biga8/ubuntu-java-8

LABEL AUTHOR="Evaldo Neto"
LABEL EMAIL="evaldo@becon.com.br"

ENV TOMCAT_VERSION "apache-tomcat-7.0.92"
ENV CATALINA_PID /opt/tomcat/temp/tomcat.pid
ENV CATALINA_HOME /opt/tomcat
ENV CATALINA_BASE /opt/tomcat
ENV CATALINA_OPTS "-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
ENV JAVA_OPTS "-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom"

WORKDIR /opt

COPY ${TOMCAT_VERSION}.tar.gz ./tomcat.tar.gz

RUN tar -xvf /opt/tomcat.tar.gz --one-top-level=tomcat --strip-components=1 && \
    rm /opt/tomcat.tar.gz
