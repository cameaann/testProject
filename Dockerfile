# Use OpenJDK 21 JDK with Alpine Linux as the base image
# Use OpenJDK 21 JDK with the slim variant as the base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
# Adjust the path to your JAR file if necessary
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Expose the port your application runs on
EXPOSE 8080

# Set the entry point to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]