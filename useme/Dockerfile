FROM biga8/ubuntu-tomcat-7

## MYSQL INSTALLATION 
ENV MYSQL_USER=mysql \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server \
 && rm -rf ${MYSQL_DATA_DIR} \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /sbin/entrypoint.sh

EXPOSE 3306/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]

RUN chmod 755 /sbin/entrypoint.sh

## USEME INSTALLATION
WORKDIR /opt/tomcat

RUN rm -rf /opt/tomcat/webapps/*
COPY tomcat/conf/server.xml /opt/tomcat/conf
COPY target/server.war /opt/tomcat/webapps/

#CMD ["/usr/bin/mysqld_safe"]
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
