FROM node:18.5.0 as builder

WORKDIR /app/storefront

COPY . .

RUN rm -rf node_modules

RUN apt-get update

RUN yarn add sharp

RUN yarn install

RUN npm run build

ENTRYPOINT ["npm", "run", "start"]