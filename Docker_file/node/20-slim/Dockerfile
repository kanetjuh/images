FROM node:20-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Add the start.sh script to the container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Create a non-root user
RUN useradd -r -u 1000 -d /app node \
    && mkdir -p /app/data \
    && chown -R node:node /app

USER node
WORKDIR /app/data

CMD ["/start.sh"]
