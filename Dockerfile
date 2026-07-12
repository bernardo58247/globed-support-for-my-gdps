FROM ubuntu:latest

# Install system libraries and curl to download the file
RUN apt-get update && apt-get install -y libc6 libssl-dev ca-certificates curl && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Download the specific game-server Linux executable directly into the container
RUN curl -L -o /app/central-server https://github.com

# Copy your config file from your GitHub repository
COPY config.toml /app/config.toml

# Grant execution permissions
RUN chmod +x /app/central-server

# Force the server to listen on Render's required port
ENV GLOBED_PORT=10000
EXPOSE 10000

# Start the server
CMD ["./central-server"]
