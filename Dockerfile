FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Install Git
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
RUN git clone <URL_of_your_GitHub_repository> app

# Set the working directory to the cloned repository
WORKDIR /usr/src/app/app

# Install Python requirements
RUN pip3 install --no-cache-dir -r requirements.txt

# Set permissions if needed for start.sh
RUN chmod +x start.sh

# Run the start script
CMD ["bash", "start.sh"]
