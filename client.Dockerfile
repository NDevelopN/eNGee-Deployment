# syntax=docker/dockerfile:1
FROM node:latest

# install app dependencies
RUN apt update
RUN apt install -y git jq

# install app
RUN git clone https://github.com/NDevelopN/eNGee-Client.git /root/Engee-Client
WORKDIR /root/Engee-Client
RUN git checkout deployment

# final command
CMD ./deploy.sh 0