#! /bin/bash

set -e -x
rc=0

apt-get update
. apt-get-from-librarian {gcc,cpp}=4:9.3.0-1ubuntu2 {cpp-9,gcc-9,gcc-9-base,libgcc-9-dev,libasan5}=9.3.0-17ubuntu1~20.04

if gcc --version | grep 9.3.0-17ubuntu1~20.04; then
    echo "ok"
else
    echo "not ok"
    rc=1
fi

exit $rc
