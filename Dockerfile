FROM openjdk:8-jre-alpine3.9
 
# copy the packaged jar file into our docker image
COPY target/java-maven-jenkins-2.0-SNAPSHOT.jar /java-maven-jenkins.jar
 
# set the startup command to execute the jar
CMD ["java", "-jar", "/java-maven-jenkins.jar"]