FROM ubuntu:20.04
LABEL version="8u275b01-fx"

WORKDIR /usr/lib/jvm
RUN apt-get update && apt-get install wget locales -y && apt-get clean
RUN locale-gen en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN wget https://cdn.azul.com/zulu/bin/zulu8.50.0.53-ca-fx-jdk8.0.275-linux_x64.tar.gz && tar -xzvf zulu8.50.0.53-ca-fx-jdk8.0.275-linux_x64.tar.gz && rm zulu8.50.0.53-ca-fx-jdk8.0.275-linux_x64.tar.gz
ENV PATH="/usr/lib/jvm/zulu8.50.0.53-ca-fx-jdk8.0.275-linux_x64/bin:${PATH}"
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
