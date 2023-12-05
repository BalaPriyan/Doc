#!/bin/sh

# Install Python requirements
pip3 install -r requirements.txt

# Build the Docker image
docker build -t my_docker_image .

# Run the Docker image
docker run my_docker_image && sh start.sh
￼Enter
