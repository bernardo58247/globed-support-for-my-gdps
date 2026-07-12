FROM ghcr.io/globedgd/central-server:latest

# Copy your configuration file into the container
COPY config/central.toml /app/config.toml

# Expose Render's web port
EXPOSE 10000

CMD ["/app/central-server"]
