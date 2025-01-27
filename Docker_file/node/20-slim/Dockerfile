FROM node:20-slim

# Update and install essential tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user for security
RUN useradd -r -u 1000 -d /app node \
    && mkdir -p /app/data \
    && chown -R node:node /app

# Switch to the non-root user
USER node

# Set the working directory
WORKDIR /app/data

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Set the entrypoint script to manage startup behavior
ENTRYPOINT ["/start.sh"]
