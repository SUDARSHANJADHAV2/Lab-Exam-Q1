   FROM openjdk:11-jre-slim

   WORKDIR /app

   COPY . .

   EXPOSE 8080

   ENV NAME World

   CMD ["java", "Multiplication"]
