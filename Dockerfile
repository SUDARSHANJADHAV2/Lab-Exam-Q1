
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY Multiplication.java .

RUN javac Multiplication.java

CMD ["java", "Multiplication"]
