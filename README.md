# Combo-Image

This Docker image is a versatile combination of essential development tools, including **Docker**, **Git**, **SonarQube**, **Python**, and **Flask**. It is designed to serve as a robust base image for projects requiring these technologies.

---

## Steps to Run the Docker Image

### 1. Pull the Docker Image

Pull the Docker image from Docker Hub using the following command:
```bash
docker pull sheshu009/python-flask-sonarqube:latest
```

---

### 2. Run the Docker Container

Run the container with the necessary configurations:
```bash
docker run -d --name combo-image sheshu009/python-flask-sonarqube:latest
```

---

### 3. Verify the Container is Running

Check if the container is running by using:
```bash
docker ps
```

Ensure that the container `combo-image` is listed and running.

---

## Use as a Base Image

This image can be used as the base image for any project that requires **Python**, **Flask**, **SonarQube**, **Git**, or **Docker**.

### Example Dockerfile
```Dockerfile
FROM sheshu009/python-flask-sonarqube:latest

# Add your project-specific setup here
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
```

---

## Features

- **Docker**: Container orchestration tool.
- **Git**: Version control system.
- **SonarQube**: Code quality and security analysis tool.
- **Python**: Programming language with libraries for web development and more.
- **Flask**: Lightweight web application framework.

---

I created this image to meet the specific requirements of my project.

---