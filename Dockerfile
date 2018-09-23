FROM node:stretch

WORKDIR /usr/src/admin-portal

COPY . .

EXPOSE 8080

CMD npm install && npm start
