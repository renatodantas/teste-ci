#!/bin/bash

if [ -z "$1" ]; then
    echo "[ATENÇÃO] Execute o comando com o nome do projeto."
    echo "Ex.: ./deploy.sh ci-modulo-1"
    exit 1
fi

#docker run -it --rm \
#    --network=teste-ci_default \
#    -v $PWD/$1:/usr/src/build \
#    -v $PWD/docker/settings.xml:/usr/share/maven/ref/settings.xml \
#    -w /usr/src/build \
#    maven:3.3-jdk-8-alpine \
#    mvn clean deploy --batch-mode -Dorg.slf4j.simpleLogger.log.org.apache.maven.cli.transfer.Slf4jMavenTransferListener=warn

# Teste local
#mvn clean deploy -f $1 -s docker/settings.xml

rm -rf /tmp/ci
mkdir -p /tmp/ci/$1
git clone http://localhost:9002/root/$1 /tmp/ci/$1
cp $1/* -R /tmp/ci/$1
cd /tmp/ci/$1
git add *
git commit -m "Primeira versão"
git push -u origin master