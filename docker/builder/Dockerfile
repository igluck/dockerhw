FROM maven:3.6.3-jdk-8



RUN apt update && apt install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /build

RUN git clone https://github.com/jenkinsci/jenkins.git && \
    cd jenkins && \
    mvn -am -pl war,bom -DskipTests -Dspotbugs.skip clean install
