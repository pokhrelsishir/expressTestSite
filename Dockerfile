FROM node:latest

MAINTAINER Sishir Pokhrel

ENV NODE_ENV = production
ENV PORT=3000

COPY . /var/www 
WORKDIR /var/www

VOLUME ["/var/www"]

RUN        npm install

EXPOSE 3000

ENTRYPOINT ["npm", "start"]