# Use the official Tomcat base image
FROM tomcat:9.0.52-jre11-openjdk-slim

# Install Java 17 (not required if base image already includes it)
# RUN apt-get update && \
#     apt-get install -y openjdk-17-jdk && \
#     apt-get clean;

# Set Java 17 as the default Java version (adjust path if necessary)
# RUN update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java && \
#     update-alternatives --set javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac

# Copy the JAR file into the Tomcat webapps directory
COPY /var/lib/docker/target/yatra-ms*.jar /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# (Optional) If you have a specific user to run the application
# USER yatra-ms

# Set the working directory (not strictly necessary unless you are running additional commands in this directory)
# WORKDIR /usr/local/tomcat/webapps

# Start Tomcat
CMD ["catalina.sh", "run"]
