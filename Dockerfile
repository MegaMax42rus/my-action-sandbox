# Container image that runs your code
FROM ubuntu:latest

RUN apt update && apt install -y git bc

