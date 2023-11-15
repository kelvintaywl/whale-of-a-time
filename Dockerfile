FROM ubuntu:23.04

ENV FLYWAY_VERSION="9.20.1"
ENV AWSCLI_VERSION=1.29.29

VOLUME ["./work"]

WORKDIR ./work

RUN apt-get update && apt-get install -y postgresql-client \
            wget \
            python3 \
            python3-pip

RUN pip3 install --no-cache-dir --upgrade --break-system-packages \
      pip \
      setuptools \
      awscli==$AWSCLI_VERSION

RUN wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz | tar xvz && ln -s `pwd`/flyway-${FLYWAY_VERSION}/flyway /usr/local/bin

ADD ../scripts .

RUN chmod +x scripts/*.sh scripts/*.py