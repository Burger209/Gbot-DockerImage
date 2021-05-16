FROM node:lts-slim

RUN apt update \
&& apt install -y git

RUN mkdir /bot/ \
    && cd /bot/ \
    && git clone -b Docker https://github.com/Burger209/Gbot.git

WORKDIR /bot/Gbot