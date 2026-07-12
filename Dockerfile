FROM ghcr.io/globedgd/central-server:latest

# Define a pasta oficial de trabalho
WORKDIR /app

EXPOSE 10000

CMD ["/app/central-server"]
