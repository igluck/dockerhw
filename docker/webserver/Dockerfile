FROM alpine

RUN apk --update add --no-cache openjdk8



RUN cd /srv/ && \
    wget https://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-8/v8.5.56/bin/apache-tomcat-8.5.56.tar.gz && \
    tar zxf apache-tomcat-8.5.56.tar.gz && \
    mv apache-tomcat-8.5.56 tomcat &&\
    rm -rf apache-tomcat-8.5.56.tar.gz
WORKDIR /app

ADD app/jenkins.war /srv/tomcat/webapps/jenkins.war

EXPOSE 8080

CMD ["sh", "/srv/tomcat/bin/catalina.sh", "run" ]
