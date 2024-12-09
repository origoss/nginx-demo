#!/bin/bash

scriptname=$(readlink -f "$0")
dirname=$(dirname "$scriptname")

SUBVERSION="-alpine"

. "$dirname/vars.sh" || exit 1

build_dir="$dirname/custom-nginx-alpine"
BASE_IMAGE="${BASE_IMAGE_NGINX}"
OUTPUT_IMAGE="${OUTPUT_IMAGE_REGISTRY}${OUTPUT_IMAGE_REGISTRY:+/}${OUTPUT_IMAGE_REPO_NGINX}"

export build_dir BASE_IMAGE OUTPUT_IMAGE

exec "$dirname/build.sh" "$@"
