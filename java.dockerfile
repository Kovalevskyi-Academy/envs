FROM us.gcr.io/artifacts-298104/base:1e695a4

RUN apt-get update && apt-get install --no-install-recommends -y \
    java-common \
    libxi6 \
    libxrender1 \
    libxtst6 \
    libfontconfig1 \
    libfreetype6 \
    fontconfig-config \
    wget \
    tree \
    maven \
	jq \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://raw.githubusercontent.com/Kovalevskyi-Academy/envs/master/autorun.sh \
	&& chmod +x ./autorun.sh \
	&& wget https://cdn.azul.com/zulu/bin/zulu16.28.11-ca-jdk16.0.0-linux_amd64.deb \
    && dpkg -i ./zulu16.28.11-ca-jdk16.0.0-linux_amd64.deb \
    && java --version

# Setup environment variables required for Java to work 
RUN echo '\
export M2_HOME="/usr/bin/"\n\
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")' >> ~/.bashrc

CMD /bin/bash -c './autorun.sh; /bin/bash'
