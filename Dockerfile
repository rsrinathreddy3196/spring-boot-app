FROM openjdk:17-jdk-alpine

WORKDIR /app
 
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN chmod 777 ./mvnw
 
RUN ./mvnw dependency:go-offline
 
COPY src ./src
 
CMD ["./mvnw", "spring-boot:run"]

