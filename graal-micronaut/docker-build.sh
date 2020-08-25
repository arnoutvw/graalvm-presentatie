#!/bin/sh
export JAVA_HOME=/Users/arnout/.sdkman/candidates/java/20.1.0.r11-grl
mvn clean install
docker build . -t graal-micronaut
docker run -p 8080:8080 graal-micronaut
