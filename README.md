# OmegaSquad82/BlueBuilds &nbsp; [![bluebuild](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build.yml) [![Dependabot Updates](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Images

All images are built with a selection of common packages and flatpaks. ZRAM is pre-configured to use system default compression (likely LZ4) and from 2xRAM up to 32 GiB as Swap space and Virtual Memory settings have been configured for both increased amount of and low latency swapping. The latency improvements come at a price of a higher likelyhood of page faults because readahead has been deactivated.

### Aubertit

It is a flavor of Bazzite for ASUS Laptops with some NVIDIA GPU.

### Borealis

An opinionated descendant of Aurora for my usual desktop and tinkering workflows.

### Buttgenbachit

Bazzite Stable NVIDIA for desktop gaming.

### Carbonatcyanotrichit

Bazzite Deck Stable for my Steam Deck clone.

### Flaviramea

My netbook still exists and is dear to me and so it is running Sway, now.

## Customizations

### Bazzite

Both _goverlay_ and _mangohud_ packages are installed on top and the `tailscaled.service` is disabled.

### Podman

The `podman.service` is enabled on Borealis, Buttgenbachit and Flaviramea.

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
- Weasis

### Packages

- byobu
- kitty
- neovim
- powertop
- powerstat

### swap on zram

Let's have a look into some articles I've read over time. I did not do any measurements on my own, just rough observations while using my systems, especially the low memory (4 GiB) netbook I'm using for roughly seven years, and generally fare well with these settings, now. By default Fedora is using the [systemd-zram-generator](https://github.com/systemd/zram-generator).

#### Blogs

- [Free vs. Available Memory in Linux; August 30, 2024 by Hayden James, in Blog Linux](https://linuxblog.io/free-vs-available-memory-in-linux/)
- [Linux Performance: Almost Always Add Swap Space – Part 2: ZRAM; September 25, 2023 by Hayden James, in Blog Linux](https://haydenjames.io/linux-performance-almost-always-add-swap-part2-zram/)
- [Tuning ZRAM in Fedora for Better Performance and Get Rid of OOM Crashes; Tue, Dec 12, 2023](https://blog.guillaumea.fr/post/tuning_zram_fedora_for_better_performance/)

#### Documentation

- [Virtual Memory](https://www.kernel.org/doc/html/latest/admin-guide/sysctl/vm.html)
- [zram: Compressed RAM-based block devices](https://docs.kernel.org/admin-guide/blockdev/zram.html)
- [Phoronix Test Suite](https://github.com/phoronix-test-suite/phoronix-test-suite/blob/master/documentation/phoronix-test-suite.md)
- [OpenBenchmarking](https://openbenchmarking.org/features)

#### Github

- [Zram can be configured more optimally by using lz4 instead of zstd1 #1570](https://github.com/ublue-os/bazzite/issues/1570)

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
