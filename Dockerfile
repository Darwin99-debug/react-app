FROM node:latest

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package.json /usr/src/app/package.json
# COPY package-lock.json /usr/src/app/package-lock.json

COPY . ./
# RUN npm install -g npm@8.5.2
RUN npm install 
# RUN npm install react-scripts@3.4.1 -g --silent

CMD npm start