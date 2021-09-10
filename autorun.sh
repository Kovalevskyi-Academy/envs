#!/bin/bash
ZEUS_VERSION=$(curl -s https://api.github.com/repos/Kovalevskyi-Academy/Zeus/releases/latest | jq -r '.tag_name')
STR="export CLASSPATH=/lib/Zeus-${ZEUS_VERSION}.jar"
printf "$STR" >> /root/.bashrc
wget -nc https://github.com/Kovalevskyi-Academy/Zeus/releases/download/${ZEUS_VERSION}/Zeus-${ZEUS_VERSION}.jar -P /lib
clear
