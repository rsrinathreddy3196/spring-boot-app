FROM openjdk:17-jdk-alpine AS builder

# Install apt-get
RUN apk add --no-cache bash

COPY src /src

WORKDIR /src

RUN apt-get update && apt-get install -y maven

RUN mvn clean package

FROM openjdk:17-jdk-alpine

COPY --from=builder target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

WORKDIR /app

ENTRYPOINT ["java", "-jar", "demo.jar"]

