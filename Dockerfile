FROM openjdk:8
ARG JAR_FILE=./target/*.jar

COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "sh", "-c", "java -jar jetty-webapp-1.0.0-SNAPSHOT-jar-with-dependencies"]
