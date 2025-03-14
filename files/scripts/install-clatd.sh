#!/usr/bin/env bash
## https://devhints.io/bash
set -euxo pipefail # strict
IFS=$'\n\t'

# ensure installation and configuration
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

traperr() {
    echo "ERROR: ${BASH_SOURCE[1]} at about ${BASH_LINENO[0]}"
}

set -o errtrace
trap traperr ERR

# verify dependencies
dnf5 install -y make pod2man tayga
make --version

cd /tmp

git clone https://github.com/toreanderson/clatd.git
sed -i 's/ $(SYSTEMCTL) / echo $(SYSTEMCTL) /g' clatd/Makefile
make -C clatd install installdeps || true
/usr/sbin/clatd -h
