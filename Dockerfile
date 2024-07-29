FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -U pip && pip3 install -U -r requirements.txt

# If ALiENxBEN/Forward-bot-v69 is a script, make sure it is executable and run it
COPY ALiENxBEN/Forward-bot-v69 /app/ALiENxBEN/Forward-bot-v69
RUN chmod +x /app/ALiENxBEN/Forward-bot-v69
RUN /app/ALiENxBEN/Forward-bot-v69

# Make start.sh executable and set it as the entrypoint
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
