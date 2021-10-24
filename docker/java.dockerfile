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
    && wget https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz \
    && tar xvf openjdk-17_linux-x64_bin.tar.gz \
    && mv jdk-17 /opt/
    && export JAVA_HOME=/opt/jdk-17
    && export PATH=$PATH:$JAVA_HOME/bin 
    && source ~/.bashrc

# Setup environment variables required for Java to work 
RUN echo '\
export M2_HOME="/usr/bin/"\n\


CMD /bin/bash -c './autorun.sh; /bin/bash'
