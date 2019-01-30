FROM node:8.11-alpine as myBuilder

RUN mkdir -p /app

COPY vue-example/ /app

WORKDIR /app

RUN npm install -g @vue/cli-service-global

RUN npm install

RUN npm run build

FROM nginx:alpine

COPY --from=myBuilder /app/dist /usr/share/nginx/html

EXPOSE 80


