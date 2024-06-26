FROM node:21.7.1-alpine3.19

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

CMD [ "npm", "run", "start:dev" ]