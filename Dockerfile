FROM ubuntu:latest AS build

# Install dependencies
RUN apt-get update && apt-get install openjdk-17-jdk -y

COPY . .

RUN apt-get install maven -y && mvn clean install
