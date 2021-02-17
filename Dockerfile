############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

ADD package.json .
RUN npm install fastify
RUN npm install fastify-plugin
RUN npm install fastify-cli
RUN npm install	fastify-autoload
ADD app.js .
ADD routes routes
ADD plugins plugins
