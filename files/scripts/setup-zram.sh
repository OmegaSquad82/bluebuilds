#!/usr/bin/env bash
## devhints.io/bash
set -euo pipefail

# ensure installation and configuration
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

# verify dependencies
make --version
cc --version

# https://www.rust-lang.org/
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# shellcheck source=/dev/null
source /root/.cargo/env

rustup toolchain install stable
rustup default stable

# verify toolchain
rustup --version
rustc --version
cargo --version

# https://crates.io/crates/zram-generator
SYSTEMD_UTIL_DIR=$(pkg-config --variable=systemdutildir systemd)
SYSTEMD_SYSTEM_UNIT_DIR=$(pkg-config --variable=systemdsystemunitdir systemd)
SYSTEMD_SYSTEM_GENERATOR_DIR=$(pkg-config --variable=systemdsystemgeneratordir systemd)

export SYSTEMD_UTIL_DIR
export SYSTEMD_SYSTEM_UNIT_DIR
export SYSTEMD_SYSTEM_GENERATOR_DIR

cargo install zram-generator # >=v1.2.1 supports recompression and options for algorithms
install -b /root/.cargo/bin/zram-generator "$SYSTEMD_SYSTEM_GENERATOR_DIR"

# cleanup build toolchain
rustup self uninstall -y
rm -rf /root/.cargo/

# set (re)compression algorithms for all configured zram devices
sed -i 's/^compression-.*/compression-algorithm = lz4 zstd lz4hc (type=huge_idle)/g' /etc/systemd/zram-generator.conf
