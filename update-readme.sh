#! /bin/bash

topdir=$(dirname "$0")
"$topdir/apt-get-from-librarian" -h &> "$topdir/README.rst"
