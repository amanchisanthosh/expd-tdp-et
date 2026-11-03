FROM azul/zulu-openjdk:21 AS builder
RUN apt -y update \
    && apt install -y maven

WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

FROM azul/zulu-openjdk:21
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

