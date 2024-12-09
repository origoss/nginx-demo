BASE_IMAGE_NGINX=docker.io/nginx
export BASE_IMAGE_TAG="${NGINX_VERSION}${SUBVERSION}"

OUTPUT_IMAGE_REGISTRY=registry.apps.bm.cokp.origoss.com
OUTPUT_IMAGE_REPO_NGINX=library/nginx-demo
export OUTPUT_IMAGE_TAG="${BASE_IMAGE_TAG}"
