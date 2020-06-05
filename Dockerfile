FROM tomcat:9.0

RUN apt update && apt install -y \
    maven \
    git \
    && rm -rf /var/lib/apt/lists/*



RUN mkdir /app && cd /app && git clone https://github.com/jenkinsci/jenkins.git && cd jenkins && mvn -am -pl war,bom -DskipTests -Dspotbugs.skip clean install

RUN cp /app/jenkins/war/target/jenkins.war /usr/local/tomcat/webapps/ && rm -rf /app
