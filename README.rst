apt-get-from-librarian: Install packages from launchpad librarian
=================================================================

This tool can install old version of ubuntu packages from launchpad librarian.

Usage:

    # apt-get-from-librarian [<PACKAGE1=VERSION1>...]

Options:

-h, --help                  Show this message.
-a, --arch ARCH             Set arch (default from ``dpkg --print-architecture``).
-d, --distro DISTRO         Set ubuntu distro codename (default from ``/etc/os-release``)

Example:

    # apt-get-from-librarian gcc-9=9.3.0-17ubuntu1~20.04 g++-9=9.3.0-17ubuntu1~20.04

It is implemented as a standalone single-file bash script.

Homepage: https://gitlab.com/cdleonard/apt-get-from-librarian
