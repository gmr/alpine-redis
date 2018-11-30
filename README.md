# alpine-redis

Redis Docker image with a small disk footprint.

[![Build Status](https://travis-ci.org/gmr/alpine-redis.svg?branch=master)](https://travis-ci.org/gmr/alpine-redis)
![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/gmr/alpine-redis.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/gavinmroy/alpine-redis.svg)
![Docker Stars](https://img.shields.io/docker/stars/gavinmroy/alpine-redis.svg)

## Example Usage

```bash
docker run --name redis -p 6379 gavinmroy/alpine-redis:latest
```

## Changelog

- Update to Alpine 3.8, Redis 4.0.11, add healtcheck
