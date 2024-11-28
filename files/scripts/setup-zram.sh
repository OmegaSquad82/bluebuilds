#!/usr/bin/env bash
## devhints.io/bash
set -euo pipefail

# https://crates.io/crates/zram-generator
SYSTEMD_UTIL_DIR=$(pkg-config --variable=systemdutildir systemd)
SYSTEMD_SYSTEM_UNIT_DIR=$(pkg-config --variable=systemdsystemunitdir systemd)
SYSTEMD_SYSTEM_GENERATOR_DIR=$(pkg-config --variable=systemdsystemgeneratordir systemd)

export SYSTEMD_UTIL_DIR
export SYSTEMD_SYSTEM_UNIT_DIR
export SYSTEMD_SYSTEM_GENERATOR_DIR
cargo install zram-generator --root "$SYSTEMD_SYSTEM_GENERATOR_DIR" # >=v1.2.1
rm -rf /root/.cargo/

sed -i 's/.*algorithm.*/compression-algorithm = lz4 zstd lc4hc/g' /etc/systemd/zram-generator.conf
