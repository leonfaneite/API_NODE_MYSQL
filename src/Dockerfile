FROM node:lts-alpine3.16

COPY . ./

RUN npm install

RUN apk update && apk add bash


CMD [ "node", "server.js" ]
