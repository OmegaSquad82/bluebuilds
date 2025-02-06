# OmegaSquad82/BlueBuilds &nbsp;

[![image-build](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build-image.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build-image.yml)
[![vuln-scan](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/vulnerability-scan.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/vulnerability-scan.yml)
[![Dependabot Updates](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Images

All images are built with a selection of common packages, flatpaks as well as some configuration.

### [Aubertit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Aubertit)

It is a flavor of [Bazzite](https://bazzite.gg/) for ASUS Laptops with NVIDIA dGPU.

### [Buttgenbachit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Buttgenbachit)

Bazzite Stable for desktop gaming.

### [Carbonatcyanotrichit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Carbonatcyanotrichit)

Bazzite Deck Stable for Steam Deck clone(s).

### [Flaviramea](https://www.ecosia.org/search?tt=mzl&q=Cornus%20sericea%20Flaviramea)

Fedora (Sericea/)Sway Atomic suitable for low resource footprint devices (e.g. netbooks).

## Customizations

### Podman

The `podman.service` is enabled on both Buttgenbachit and Flaviramea.

### Flatpaks

#### All images

- KeepassXC
- LibreOffice
- Mozilla Firefox
- Signal
- SynologyDrive
- Warehouse

#### Bazzite images

- Discord
- OpenRGB

#### Select images

- AusweisApp2
- BoxBuddy
- Codium
- MediaWriter
- Obsidian
- Ptyxis
- Weasis

### Utility packages

#### All images

- byobu
- htop
- kitty
- neovim

#### Select images

 - qemu

#### Manually

`brew install pdfgrep`

### Swap on ZRAM

Fedora uses [Swap on ZRAM](https://fedoraproject.org/wiki/Changes/SwapOnZRAM) by default on all Spins, the [systemd-zram-generator](https://github.com/systemd/zram-generator) was available to configure compressed drives, including setting it up as swap. Starting with v1.2.1 the zram-generator supports (via https://github.com/systemd/zram-generator/issues/178 and https://github.com/systemd/zram-generator/pull/200) configuring recompression, which allows to set secondary compression algorithms to recompress some or all of the pages on any zram drive after a user controlled trigger (e.g. touch a knob in sysfs). For the images built from this repository the [zram-recompression.timer](files/system/etc/systemd/system/zram-recompression.timer) orchestrates said trigger, and zram is configured to use both [`zstd` and `lz4hc`](files/system/etc/systemd/zram-generator.conf) to try to recompress first idle and then huge (=_incompressible_ in specifically zram terms; the Memory Management subsystem also knows huge pages but means something [entirely different](https://docs.kernel.org/admin-guide/mm/concepts.html#huge-pages)) pages. I suppose it would be possible to try to recompress all pages (which are currently not marked as incompressible after actually trying to recompress those) in ZRAM, but this is currently not being implemented here.

#### Blogs

- [Free vs. Available Memory in Linux; August 30, 2024 by Hayden James, in Blog Linux](https://linuxblog.io/free-vs-available-memory-in-linux/)
- [Linux Performance: Almost Always Add Swap Space – Part 2: ZRAM; September 25, 2023 by Hayden James, in Blog Linux](https://haydenjames.io/linux-performance-almost-always-add-swap-part2-zram/)
- [Tales from responsivenessland: why Linux feels slow, and how to fix that](https://rudd-o.com/linux-and-free-software/tales-from-responsivenessland-why-linux-feels-slow-and-how-to-fix-that)
- [Tuning ZRAM in Fedora for Better Performance and Get Rid of OOM Crashes; Tue, Dec 12, 2023](https://blog.guillaumea.fr/post/tuning_zram_fedora_for_better_performance/)

#### Documentation

- [Virtual Memory](https://www.kernel.org/doc/html/latest/admin-guide/sysctl/vm.html)
- [zram: Compressed RAM-based block devices](https://docs.kernel.org/admin-guide/blockdev/zram.html)
- [Phoronix Test Suite](https://github.com/phoronix-test-suite/phoronix-test-suite/blob/master/documentation/phoronix-test-suite.md)
- [OpenBenchmarking](https://openbenchmarking.org/features)

#### Github

- [Zram can be configured more optimally by using lz4 instead of zstd1 #1570](https://github.com/ublue-os/bazzite/issues/1570)
- [fix: General ZRAM Optimizations #2202](https://github.com/ublue-os/bazzite/pull/2202)

#### Wikis

- [Arch Wiki - Zram](https://wiki.archlinux.org/title/Zram)
- [Fedora Wiki - Changes/Scale ZRAM to full memory size](https://fedoraproject.org/wiki/Changes/Scale_ZRAM_to_full_memory_size)

## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/blue-build/template:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/blue-build/template:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/blue-build/template
```
