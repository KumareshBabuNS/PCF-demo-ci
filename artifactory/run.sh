#!/bin/sh

export ARTIFACTORY_HOME=/var/opt/jfrog/artifactory

docker run --name artifactory-ci \
           -d \
           -p 8081:8081 \
           -p 50001:50001 \
           -v $ARTIFACTORY_HOME/data \
           -v $ARTIFACTORY_HOME/logs \
           -v $ARTIFACTORY_HOME/backup \
           -v $ARTIFACTORY_HOME/etc \
           jfrog-docker-reg2.bintray.io/jfrog/artifactory-oss:latest
