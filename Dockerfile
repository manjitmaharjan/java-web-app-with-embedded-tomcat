

#FROM openjdk:8
#ADD JAR_FILE=./target/*.jar app.jar
#ADD target/*.jar app.jar
#ENTRYPOINT [ "sh", "-c", "java -jar/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar" 
#ADD ./target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar /usr/local/tomcat/webapps/.
#ARG JAR_FILE=./target/*.jar
#RUN mkdir applicantsDocuments
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
#ENTRYPOINT [ "sh", "-c", "java -jar/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar" ]
FROM openjdk:8
ARG JAR_FILE=./target/*.jar
RUN mkdir applicantsDocuments
COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar"]
