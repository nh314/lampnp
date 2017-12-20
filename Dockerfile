FROM ubuntu:16.04

WORKDIR /app

ADD . /app

EXPOSE 80

RUN apt update && apt install -yqq apache2