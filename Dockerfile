FROM ghcr.io/globedgd/central-server:latest

# Changed to search relatively, or use lowercase
COPY ./config/central.toml /app/config.toml

EXPOSE 10000

CMD ["/app/central-server"]
