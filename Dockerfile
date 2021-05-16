FROM node:lts-slim

RUN apt update \
&& apt install -y git

RUN mkdir /usr/bot/ \
    && cd /usr/bot/ \
    && git clone -b Docker https://github.com/Burger209/Gbot.git

WORKDIR /usr/bot/Gbot

RUN npm install