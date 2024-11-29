#!/usr/bin/env bash

## devhints.io/bash
set -euo pipefail

# https://www.rust-lang.org/
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# verify installation
. "$HOME"/.cargo/env
rustup --version
rustc --version
cargo --version

# https://crates.io/crates/zram-generator
export SYSTEMD_UTIL_DIR=$(pkg-config --variable=systemdutildir systemd)
export SYSTEMD_SYSTEM_UNIT_DIR=$(pkg-config --variable=systemdsystemunitdir systemd)
export SYSTEMD_SYSTEM_GENERATOR_DIR=$(pkg-config --variable=systemdsystemgeneratordir systemd)
cargo install zram-generator # >=v1.2.1 supports recompression and options for algorithms
install -b "$HOME"/.cargo/bin/zram-generator "$SYSTEMD_SYSTEM_GENERATOR_DIR"

# cleanup
rustup self uninstall -y
rm -rf "$HOME"/.cargo/

# set (re)compression algorithms for all configured zram devices
sed -i 's/^compression-.*/compression-algorithm = lz4 zstd lz4hc (type=idle)/g' /etc/systemd/zram-generator.conf
