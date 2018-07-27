# Build command:
# docker build -t moriorgames/go-api .
# Run command:
# docker run -td --name go_api -p 8090:8090 moriorgames/go-api
FROM        golang:1.9-alpine3.8
MAINTAINER  MoriorGames "moriorgames@gmail.com"

# Create Application directory
RUN         mkdir -p /app
COPY        . /app
WORKDIR     /app

# Install needed packages for GO
RUN         apk update && apk upgrade && \
            apk add --no-cache bash git \
            && go get -u github.com/gorilla/mux \
            && apk del git

# Compile application in a single binary
RUN         go build -o main src/*.go

# Expose ports
EXPOSE      8090

ENTRYPOINT  ["./main"]
