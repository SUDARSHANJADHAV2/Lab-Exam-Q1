FROM docker.io/library/eclipse-temurin:17-jdk-noble

WORKDIR /app

COPY . .

RUN ./mvnw clean package

EXPOSE 8080

ENV MY_VARIABLE=my_value

CMD ["java", "-jar", "target/my-app.jar"]
