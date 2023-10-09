# syntax=docker/dockerfile:1
FROM golang:latest

# install app dependencies
RUN apt update
RUN apt install -y git jq

# install app
RUN git clone https://github.com/NDevelopN/eNGee-Server.git /root/Engee-Server
WORKDIR /root/Engee-Server
RUN go build

# final command
CMD go run main.go
