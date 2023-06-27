FROM docker:latest

# Install required dependencies using apk
RUN apk update && apk add --no-cache \
    curl \
    netcat-openbsd \
    vim \
    net-tools \
    openssl \
    libressl-dev

EXPOSE 5555

RUN mkdir /logs

# Copy entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
