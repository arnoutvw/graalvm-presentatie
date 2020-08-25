FROM oracle/graalvm-ce:20.1.0-java11 as graalvm
RUN gu install native-image

COPY . /home/app/graal-micronaut
WORKDIR /home/app/graal-micronaut

RUN native-image --no-server -cp target/graal-micronaut-*.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/graal-micronaut/graal-micronaut /app/graal-micronaut
ENTRYPOINT ["/app/graal-micronaut"]
