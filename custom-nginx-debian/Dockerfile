ARG BASE_IMAGE=docker.io/nginx
ARG BASE_IMAGE_TAG=stable
FROM ${BASE_IMAGE}:${BASE_IMAGE_TAG}
ARG BASE_IMAGE_TAG
RUN sed -i -e "s#Welcome to nginx!#Welcome to nginx ${BASE_IMAGE_TAG}!#" /usr/share/nginx/html/index.html
RUN apt update && apt install -y jq && apt clean all
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
