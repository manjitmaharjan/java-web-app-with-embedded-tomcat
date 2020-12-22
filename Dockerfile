FROM openjdk:8
ARG JAR_FILE=./target/*.jar

COPY ${JAR_FILE} jetty-webapp-1.0.0-SNAPSHOT-jar-with-dependencies
ENTRYPOINT [ "sh", "-c", "java -jar jetty-webapp-1.0.0-SNAPSHOT-jar-with-dependencies"]
