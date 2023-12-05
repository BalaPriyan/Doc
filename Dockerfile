# Use a base image with Git, Docker, Python, and pip installed
FROM alpine

# Install required packages
RUN apk update && \
    apk add --no-cache git docker-cli python3 python3-dev py3-pip

# Copy the setup.sh script into the container
COPY setup.sh /app/setup.sh

# Grant execution permission to the script
RUN chmod +x /app/setup.sh

# Clone the GitHub repository
RUN git clone https://github.com/BalaPriyan/helios-mirror /app/repo

# Set the working directory
WORKDIR /app

# Execute the setup script
CMD ["/app/setup.sh"]
