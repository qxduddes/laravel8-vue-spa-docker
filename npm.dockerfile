FROM node:16

WORKDIR /usr/src/app

COPY ./src/vue-app/package*.json ./

RUN npm install

EXPOSE 8080

CMD ["npm", "run", "serve"]