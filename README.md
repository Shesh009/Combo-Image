# Combo-Image

#### This is a docker image which contains the combination of softwares like Docker,Git,Sonarqube,Python,Flask.


### Steps to Run the Docker Image
#### 1. Pull the Docker Image
Use the following command to pull the Docker image from Docker Hub:
  docker pull sheshu009/python-flask-sonarqube:latest

#### 2. Run the Docker Container
Run the container with the necessary configurations:
  docker run sheshu009/python-flask-sonarqube:latest

#### 3. Verify the Container is Running
Check the running containers using:
  docker ps
Ensure your container flask-app is listed and running.

#### Use this image as the base image where you wanted to use the images of python,flask,sonarqube,git,docker etc...
  Example: FROM "sheshu009/python-flask-sonarqube:latest"