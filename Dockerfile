# syntax=docker/dockerfile:1

FROM node:12.18.1
WORKDIR /appnodejs
COPY ["package.json", "package-lock.json*", "./"]
ADD . /appnodejs
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start
