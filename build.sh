#!/bin/bash

if [ -z "$build_dir" ]; then
  echo "Missing build directory build_dir"
  exit 1
fi
if [ -z "$BASE_IMAGE" ]; then
  echo "Missing base image name BASE_IMAGE"
  exit 1
fi
if [ -z "$BASE_IMAGE_TAG" ]; then
  echo "Missing base image tag BASE_IMAGE_TAG"
  exit 1
fi
if [ -z "$OUTPUT_IMAGE" ]; then
  echo "Missing output image name OUTPUT_IMAGE"
  exit 1
fi
if [ -z "$OUTPUT_IMAGE_TAG" ]; then
  echo "Missing output image tag OUTPUT_IMAGE_TAG"
  exit 1
fi

docker build \
  --build-arg BASE_IMAGE \
  --build-arg BASE_IMAGE_TAG \
  -t "${OUTPUT_IMAGE}:${OUTPUT_IMAGE_TAG}" "$build_dir"
