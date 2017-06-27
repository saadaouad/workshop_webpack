FROM node:6-alpine

WORKDIR /var/www

COPY package.json /var/www/
RUN npm cache clean && npm config set registry http://registry.npmjs.org/ && npm install --silent --progress=false

COPY . /var/www/

CMD ["npm", "start"]