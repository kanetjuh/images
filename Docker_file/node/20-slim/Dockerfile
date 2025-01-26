FROM node:20-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*
    
RUN useradd -r -u 1000 -d /app nodeuser \
    && mkdir -p /app/data \
    && chown -R nodeuser:nodeuser /app

USER nodeuser

WORKDIR /app/data

CMD sh -c "$START"
