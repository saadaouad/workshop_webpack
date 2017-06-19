FROM node:6-alpine

WORKDIR /var/www

COPY package.json /var/www/
RUN npm install && npm cache clean

COPY . /var/www/

RUN npm build

EXPOSE 8080

CMD node app/index.js