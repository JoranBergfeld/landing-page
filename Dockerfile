# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:21.0.5_11-jdk-ubi9-minimal

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application
RUN chmod +x ./mvnw && ./mvnw package

# Expose the port the app runs on
EXPOSE 80

# Run the application
CMD ["java", "-jar", "target/info-page-0.0.1-SNAPSHOT.jar"]