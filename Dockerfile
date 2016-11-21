FROM ubuntu:16.04

COPY .gnupg /root/.gnupg

RUN apt update -y && apt install -y apt-utils
