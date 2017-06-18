FROM node:6-alpine

ENV NODE_ENV production

WORKDIR /var/www

COPY package.json /var/www/
RUN npm install

COPY . /var/www/

EXPOSE 9000

CMD node index.js