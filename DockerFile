# Use a base image with Java (specify the tag based on your Java version requirement)
FROM openjdk:17

# Add Maintainer Info
LABEL maintainer="xyzkhamim@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 9090 available to the world outside this container
EXPOSE 9090

# The application's jar file
ARG JAR_FILE=target/simple-springboot-rest-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} simple-springboot-rest.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/simple-springboot-rest.jar"]