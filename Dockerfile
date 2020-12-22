
#ENTRYPOINT [ "sh", "-c", "java -jar java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar"]

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=./target/*.jar
RUN mkdir applicantsDocuments
COPY ${JAR_FILE} japp.jar
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
#ENTRYPOINT [ "sh", "-c", "java -jar/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar" ]
