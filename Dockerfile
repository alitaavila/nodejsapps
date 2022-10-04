# syntax=docker/dockerfile:1

FROM node:12.18.1

WORKDIR /appnodejs
ADD . /appnodejs

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 3000
CMD npm start
