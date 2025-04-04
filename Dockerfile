FROM alpine

ARG BUNDLE
ARG VERSION="latest"
ARG IMAGE_REPOSITORY=quay.io/kairos/community-bundles

# renovate: datasource=docker depName=renovate/renovate versioning=docker
ARG RENOVATE_VERSION=37
# renovate: datasource=docker depName=koalaman/shellcheck-alpine versioning=docker
ARG SHELLCHECK_VERSION=v0.9.0

COPY +version/VERSION ./
ARG VERSION=$(cat VERSION)

FROM DOCKERFILE -f ${BUNDLE}/Dockerfile ./${BUNDLE}
