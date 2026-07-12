FROM ghcr.io/globedgd/central-server:latest

# Create the app directory
WORKDIR /app

# Generate the central.toml file directly inside the container
RUN echo 'bind_address = "0.0.0.0:41001"' > /app/config.toml && \
    echo '[web]' >> /app/config.toml && \
    echo 'bind_address = "0.0.0.0:10000"' >> /app/config.toml && \
    echo '[maintenance]' >> /app/config.toml && \
    echo 'enabled = false' >> /app/config.toml

EXPOSE 10000

CMD ["/app/central-server"]
