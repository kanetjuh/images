FROM node:20-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/data \
    && chown -R node:node /app

USER node

WORKDIR /app/data

CMD sh -c "$START"
