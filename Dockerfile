FROM openjdk:8
#ARG JAR_FILE=./target/*.jar
#RUN mkdir applicantsDocuments
#COPY ${JAR_FILE} /app.jar
COPY target/onlinebookstore-0.0.1-SNAPSHOT.war /app.war
ENTRYPOINT [ "sh", "-c", "java -jar /app.war"]

#FROM openjdk:8
#ARG JAR_FILE=./target/*.jar
#RUN mkdir applicantsDocuments
#COPY ${JAR_FILE} /app.jar
#ADD ./target/*.war /app.war
#ENTRYPOINT [ "sh", "-c", "java -jar /app.war"]
