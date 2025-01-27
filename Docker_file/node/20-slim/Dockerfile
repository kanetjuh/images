# Use a slim version of Node.js 20 as the base image
FROM node:20-slim

# Install necessary packages and clean up after the installation
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Add the start.sh script from a URL or local source to the container

RUN mkdir -p /app/data \
    && useradd -r -u 1000 -m -d /app -s /bin/bash node \
    && chown -R node:node /app

# Download the bash script with curl
RUN curl -fsSL https://raw.githubusercontent.com/kanetjuh/images/refs/heads/main/Docker_file/node/20-slim/start.sh -o /start.sh \
    && chmod +x /start.sh

# Switch to the node user
USER node

# Set the working directory
WORKDIR /app/data

# Define the command to run the container
CMD ["/start.sh"]  # Runs the start.sh script when the container starts
