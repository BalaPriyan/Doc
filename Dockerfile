# Use a base image with Git and Docker installed
FROM alpine

# Install required packages
RUN apk update && apk add --no-cache git docker-cli python3

# Clone the GitHub repository
RUN git clone https://github.com/BalaPriyan/helios-mirror /app/repo

# Set the working directory
WORKDIR /app/repo

# Copy the script into the container
COPY run_script.sh /app/run_script.sh

# Run the script
CMD ["sh", "/app/run_script.sh"]
