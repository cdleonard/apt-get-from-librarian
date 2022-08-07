#! /bin/bash

set -e -x
TOPDIR="$(dirname "${BASH_SOURCE[0]}")"

exit_trap()
{
    rm -rf "$tmpdir"
}
tmpdir=$(mktemp -d)
trap exit_trap EXIT

docker build --build-arg DOCKER_BASE=ubuntu:18.04 "$TOPDIR" --iidfile="$tmpdir/18.04.iid"
docker_image_18_04=$(cat "$tmpdir/18.04.iid")
docker run "$docker_image_18_04" test-inside-ubuntu-18.04.sh
docker build --build-arg DOCKER_BASE=ubuntu:20.04 "$TOPDIR" --iidfile="$tmpdir/20.04.iid"
docker_image_20_04=$(cat "$tmpdir/20.04.iid")
docker run "$docker_image_20_04" test-inside-ubuntu-20.04.sh
