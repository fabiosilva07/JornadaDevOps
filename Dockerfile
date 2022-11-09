FROM node:14-bullseye-slim

RUN apt-get update && apt-get upgrade -y && apt-get install npm -y && apt-get clean

RUN mkdir app

VOLUME app

WORKDIR app

CMD npx create-react-app reactapp && cd reactapp && npm run build && npm install -g serve && serve -s build

