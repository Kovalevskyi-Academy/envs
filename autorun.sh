#!/bin/bash
ZEUS_VERSION="47"
STR="export CLASSPATH=/lib/Zeus-${ZEUS_VERSION}.jar"
printf "$STR" >> /root/.bashrc
wget -nc https://github.com/Kovalevskyi-Academy/Zeus/releases/download/${ZEUS_VERSION}/Zeus-${ZEUS_VERSION}.jar -P /lib
clear
