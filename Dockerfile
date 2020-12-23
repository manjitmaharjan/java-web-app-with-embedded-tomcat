FROM openjdk:8
#ARG JAR_FILE=./target/*.jar
#RUN mkdir applicantsDocuments
#COPY ${JAR_FILE} /app.jar
COPY target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar /app.jar
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar"]

#FROM openjdk:8
#ARG JAR_FILE=./target/*.jar
#RUN mkdir applicantsDocuments
#COPY ${JAR_FILE} /app.jar
#ADD ./target/*.war /app.war
#ENTRYPOINT [ "sh", "-c", "java -jar /app.war"]
