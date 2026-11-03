   FROM eclipse-temurin:17-jdk-noble

   WORKDIR /app

   COPY . .

   EXPOSE 8080

   ENV NAME World

   CMD ["java", "Multiplication"]
