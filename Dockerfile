FROM openjdk:8
#

COPY ./targe/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar
ENTRYPOINT [ "sh", "-c", "java -jar java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar"]
