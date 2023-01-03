FROM node:latest@sha256:d5222e1ebd7dd7e9683f47a8861a4711cb4407a4830cbe04a582ca4986245700

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
