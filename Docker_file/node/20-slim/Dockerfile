FROM node:20-slim

# Update and install required dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set up the working directory
WORKDIR /app/data

# Copy the start.sh script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Switch to the default 'node' user that comes with the image
USER node

# Default command
CMD ["/start.sh"]
