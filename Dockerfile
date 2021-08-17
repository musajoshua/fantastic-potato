FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .

RUN yarn install

COPY . .

ENV HOST 0.0.0.0

CMD ["yarn", "dev"]