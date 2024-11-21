# Base image with Python
FROM python:3.9-slim

# Install required dependencies
RUN apt-get update && apt-get install -y \
    default-jre-headless \
    curl \
    unzip \
    git \
    docker.io && \
    apt-get clean

# Install SonarQube Scanner
RUN curl -o sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip && \
    unzip sonar-scanner.zip -d /opt && \
    rm sonar-scanner.zip && \
    ln -s /opt/sonar-scanner-*/bin/sonar-scanner /usr/bin/sonar-scanner

# Set up working directory
WORKDIR /app

# Copy application code into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir flask requests
