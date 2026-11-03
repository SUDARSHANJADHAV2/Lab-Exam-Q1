FROM eclipse-temurin:17-jdk-noble

WORKDIR /app

COPY . .


RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

RUN mvn clean package

EXPOSE 8080

ENV MY_VARIABLE=my_value


CMD ["java", "-jar", "target/my-app.jar"]
