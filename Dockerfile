FROM mysterysd/wzmlx:latest

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /usr/src/app

# Give necessary permissions
RUN chmod 777 /usr/src/app

# Clone the GitHub repository
RUN git clone <URL_of_your_GitHub_repository> app

# Set the working directory to the cloned repository
WORKDIR /usr/src/app/app

# Install Python requirements
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the remaining files
COPY . .

# Run the start script
CMD ["bash", "start.sh"]
