# Use the specified base image
FROM quay.io/drsylent/cubix/block2/homework-base:java21

# Set environment variables
ENV CUBIX_HOMEWORK="Herman Bence"
ENV APP_DEFAULT_MESSAGE=""

# Add a label with your name
LABEL cubix.homework.owner="Herman Bence"

# Copy application JAR files to the Docker image
ARG JAR_FILE
COPY ${JAR_FILE} /app.jar

# Define the entry point or command to run your applications if needed
CMD ["java", "-jar", "app.jar"]