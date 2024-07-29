FROM python:3.8-slim-buster

# Update and install necessary packages
RUN apt update && apt upgrade -y && apt install git -y

# Copy requirements.txt
COPY requirements.txt /requirements.txt

# Install Python dependencies
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

# Set working directory
WORKDIR /app

# Copy the start script
COPY start.sh /app/start.sh

# Ensure the start script is executable
RUN chmod +x /app/start.sh

# Run the start script
CMD ["/bin/bash", "/app/start.sh"]
