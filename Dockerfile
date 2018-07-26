# Build command:
# docker build -t moriorgames/go-api .
# Run command:
# docker run -td --name go_api -p 8080:8080 moriorgames/go-api
FROM        golang:1.9-alpine3.8
MAINTAINER  MoriorGames "moriorgames@gmail.com"

# Add bash executio
RUN         apk add --no-cache bash

# Create Application directory
RUN         mkdir -p /app
COPY        . /app
WORKDIR     /app

# Expose ports
EXPOSE      8080

# Add run scripts
ADD         docker/run.sh /run.sh
RUN         chmod 755 /*.sh

ENTRYPOINT  ["/run.sh"]
