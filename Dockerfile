# Use the specified base image
FROM quay.io/drsylent/cubix/block2/homework-base:java21

# Set environment variables
ENV CUBIX_HOMEWORK="Herman Bence"
ENV APP_DEFAULT_MESSAGE=""

# Add a label with your name
LABEL cubix.homework.owner="Herman Bence"

# Create a directory
RUN mkdir /opt/app && chown 1001 -R /opt/app

# Copy the built applications into the image
COPY target/*.jar /app/

# Define the entry point or command to run your applications if needed
CMD ["java", "-jar", "/app/app.jar"]