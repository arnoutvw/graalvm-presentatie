#!/bin/sh
export JAVA_HOME=/Users/arnout/.sdkman/candidates/java/20.1.0.r11-grl
./mvnw package -Pnative -Dquarkus.native.container-build=true
docker build . -f src/main/docker/Dockerfile.native -t graal-quarkus
docker run -p 8080:8080 graal-quarkus
