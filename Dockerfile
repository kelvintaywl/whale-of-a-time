# syntax = docker/dockerfile:1.2
FROM ubuntu:18.04
ENV PIP_CACHE_DIR=/var/cache/buildkit/pip
RUN mkdir -p $PIP_CACHE_DIR
RUN rm -f /etc/apt/apt.conf.d/docker-clean
RUN --mount=type=cache,target=/var/cache/apt \
	apt-get update && \
    apt-get install -yqq --no-install-recommends jq && \
    rm -rf /var/lib/apt/lists/*
