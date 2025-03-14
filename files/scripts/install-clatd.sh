#!/usr/bin/env bash
## https://devhints.io/bash
set -euo pipefail # strict
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

cd /tmp
git clone https://github.com/toreanderson/clatd
make -C clatd install installdeps
