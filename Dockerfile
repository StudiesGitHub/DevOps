FROM node:18-alpine

WORKDIR /user/src/app

COPY package.json .

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "run", "dev"]