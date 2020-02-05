FROM ubuntu:18.04
LABEL version="8u232b18-fx"

WORKDIR /usr/lib/jvm
RUN apt-get update && apt-get install wget -y && apt-get clean
RUN wget https://cdn.azul.com/zulu/bin/zulu8.42.0.23-ca-fx-jdk8.0.232-linux_x64.tar.gz
RUN tar -xzvf zulu8.42.0.23-ca-fx-jdk8.0.232-linux_x64.tar.gz
RUN rm zulu8.42.0.23-ca-fx-jdk8.0.232-linux_x64.tar.gz
ENV PATH="/usr/lib/jvm/zulu8.42.0.23-ca-fx-jdk8.0.232-linux_x64/bin:${PATH}"
