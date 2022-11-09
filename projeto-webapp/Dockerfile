FROM node:14-bullseye-slim

RUN apt-get update && apt-get upgrade -y && apt-get install npm -y && apt-get clean

RUN mkdir app

VOLUME app

WORKDIR app

CMD npm install && npm start && npm run build && npm install -g serve && serve -s build

