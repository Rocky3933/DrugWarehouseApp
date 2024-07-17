# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY target/DrugWarehouseApp-1.0-SNAPSHOT.jar /app

# Run the application
ENTRYPOINT ["java", "-jar", "DrugWarehouseApp-1.0-SNAPSHOT.jar"]

# Expose the port the application runs on
EXPOSE 8080
