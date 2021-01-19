FROM us.gcr.io/artifacts-298104/base

RUN apt install wget
RUN wget https://cdn.azul.com/zulu/bin/zulu15.28.51-ca-jdk15.0.1-linux_amd64.deb

