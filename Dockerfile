
#ENTRYPOINT [ "sh", "-c", "java -jar java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar"]

FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar" ]
