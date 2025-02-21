FROM node:18.20.7-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app/

RUN chmod +x bin/www

EXPOSE 3000

CMD ["npm", "start"]