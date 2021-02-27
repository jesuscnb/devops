FROM node:lts-alpine3.12
EXPOSE 8080
RUN npm install -g npm_lazy
COPY config.js .
ENTRYPOINT ["npm_lazy", "--config", "./config.js"]
