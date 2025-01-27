

FROM node:20-slim

# Install necessary packages (curl, ca-certificates)
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create the /app directory and set up the user with proper permissions
RUN mkdir -p /app/data \
    && useradd -r -u 1000 -m -d /app -s /bin/bash node \
    && chown -R node:node /app

# Download the bash script using curl
RUN curl -fsSL https://raw.githubusercontent.com/kanetjuh/images/refs/heads/main/Docker_file/node/20-slim/start.sh -o /start.sh \
    && chmod +x /start.sh

# Switch to the node user
USER node

# Set the working directory to /app/data
WORKDIR /app/data

# Set the default command to start the server or run the script
CMD ["/start.sh"]

