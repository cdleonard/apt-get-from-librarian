#! /bin/bash

set -e -x

APPDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd -P)"

docker build "$APPDIR"
docker run \
    --interactive \
    --tty \
    --volume "$APPDIR:/app" \
    --workdir /app \
    "$(docker build -q "$APPDIR")" \
    "$@"
