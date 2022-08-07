#! /bin/bash

set -e -x
apt-get update
# SLOW:
#. apt-get-from-librarian --distro bionic linux-image-unsigned-4.15.0-23-generic-dbgsym=4.15.0-23.25
. apt-get-from-librarian --distro bionic iproute2=4.15.0-2ubuntu1.3
