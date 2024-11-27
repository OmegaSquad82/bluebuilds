#!/usr/bin/env bash
## devhints.io/bash
set -euo pipefail

cd /tmp
git clone https://github.com/systemd/zram-generator.git
cd zram-generator
make build
make install NOBUILD=true
make clean

sed -i 's/.*algorithm.*/compression-algorithm = lz4 zstd lc4hc/g' /etc/systemd/zram-generator.conf
