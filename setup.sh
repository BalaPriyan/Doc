#!/bin/sh

# Change directory to the cloned repository
cd /app/repo

# Install Python requirements
pip3 install -r requirements.txt

# Build Docker image
docker build . -t mltb

# Run the Docker image
sudo docker run -p 80:80 -p 8080:8080 mltb

# Execute start.sh if needed
#sh start.sh
