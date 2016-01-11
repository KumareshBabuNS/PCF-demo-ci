#!/bin/sh

docker run --name ci-jenkins \
           -d \
           -p 8080:8080 \
           -p 50000:50000 \
           -v /var/jenkins_home \
           jenkins-custom
