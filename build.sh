#!/bin/bash

docker run -it --rm \
    -v "$PWD"/ci-modulo-dependencia:/usr/src/build \
    -v "$PWD"/docker/settings.xml:/usr/share/maven/ref/settings.xml \
    -w /usr/src/build \
    maven:3.3-jdk-8-alpine \
    mvn clean install