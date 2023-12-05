#!/bin/sh

# Change directory to the cloned repository
cd /app/repo

# Install Python requirements
pip3 install -r requirements.txt

# Build Docker image
docker build -t my_docker_image .

# Run the Docker image
docker run my_docker_image

# Execute start.sh if needed
#sh start.sh
