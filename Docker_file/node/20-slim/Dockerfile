FROM node:20-slim

# Installeer vereiste tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
        passwd \
    && rm -rf /var/lib/apt/lists/*

# Maak een niet-root gebruiker aan en stel rechten in
RUN useradd -r -u 1000 -d /app nodeuser \
    && mkdir -p /app/data \
    && chown -R nodeuser:nodeuser /app

# Gebruik de niet-root gebruiker
USER nodeuser

# Stel de werkdirectory in
WORKDIR /app/data

# Start de container
CMD sh -c "$START"
