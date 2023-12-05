#!/bin/sh

# Install Python requirements
pip3 install -r requirements.txt

# Build the Docker image
sudo docker build . -t mltb

# Run the Docker image
sudo docker run -p 80:80 -p 8080:8080 mltb
