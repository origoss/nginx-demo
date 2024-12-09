ARG BASE_IMAGE=docker.io/nginx
ARG BASE_IMAGE_TAG=stable
FROM ${BASE_IMAGE}:${BASE_IMAGE_TAG}
RUN apt update && apt install -y jq && apt clean all
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
