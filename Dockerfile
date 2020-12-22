
#ENTRYPOINT [ "sh", "-c", "java -jar java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar"]

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=./target/*.jar
RUN mkdir applicantsDocuments
COPY ${JAR_FILE} java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar
ENTRYPOINT [ "sh", "-c", "java -jar/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar" ]
