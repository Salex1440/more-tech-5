FROM openjdk:17-alpine
WORKDIR /app
COPY target/*-SNAPSHOT.jar app.jar
COPY src/main/resources/*.sql resources/*.sql
ENTRYPOINT ["java","-jar","app.jar"]