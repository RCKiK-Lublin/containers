#!/usr/bin/env sh
set -e

docker build --no-cache --pull --platform "linux/arm64" -t ghcr.io/rckik-lublin/php:app .
