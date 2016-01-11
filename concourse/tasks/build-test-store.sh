#!/bin/sh

mvn -s PCF-demo-ci/settings.xml -f PCF-demo/pom.xml clean deploy
