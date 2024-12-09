ARG BASE_IMAGE=docker.io/nginx
ARG BASE_IMAGE_TAG=stable-alpine
FROM ${BASE_IMAGE}:${BASE_IMAGE_TAG}
RUN apk update && apk add jq && apk cache purge
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
