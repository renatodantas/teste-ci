#!/bin/bash

if [ -z "$1" ]; then
    echo "[ATENÇÃO] Execute o comando com o nome do projeto."
    echo "Ex.: ./build.sh ci-modulo-1"
    exit 1
fi

docker run -it --rm \
    --network=teste-ci_default \
    -v $PWD/$1:/usr/src/build \
    -v $PWD/docker/settings.xml:/usr/share/maven/ref/settings.xml \
    -w /usr/src/build \
    maven:3.3-jdk-8-alpine \
    mvn clean install --batch-mode -Dorg.slf4j.simpleLogger.log.org.apache.maven.cli.transfer.Slf4jMavenTransferListener=warn