# OmegaSquad82/BlueBuilds &nbsp;

[![image-build](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build-image.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build-image.yml)
[![vuln-scan](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/vulnerability-scan.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/vulnerability-scan.yml)
[![Dependabot Updates](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Images

All images are built with a selection of common packages, flatpaks as well as some configuration.

### [Aubertit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Aubertit)

It is a flavor of [Bazzite](https://bazzite.gg/) Stable for ASUS Laptops with NVIDIA dGPU.

### [Buttgenbachit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Buttgenbachit)

Bazzite Stable for either desktop or laptop gaming.

### [Carbonatcyanotrichit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Carbonatcyanotrichit)

Bazzite Deck Stable for Steam Deck clone(s).

### [Flaviramea](https://www.ecosia.org/search?tt=mzl&q=Cornus%20sericea%20Flaviramea)

Fedora (Sericea/)Sway Atomic suitable for low resource footprint devices (e.g. netbooks).

## Customizations

### Podman

The `podman.service` is enabled on Buttgenbachit.

### Flatpaks

#### All images

##### install

- KeepassXC
- LibreOffice
- LibreWolf
- Signal
- SynologyDrive
- Warehouse

##### uninstall

- Mozilla Firefox

#### Bazzite images

- Discord
- OpenRGB

#### Select images

- AusweisApp2
- BoxBuddy
- Calibre
- Codium
- HandHeldDaemon
- LACT
- Libation
- MediaWriter
- Obsidian
- Ptyxis
- Weasis

### Utility packages

#### All images

##### install

- byobu
- htop
- kitty
- neovim

#### Select Images

##### uninstall

- firefox

#### Manually

##### execute

- `brew install pdfgrep`

### 464XLAT for IPv6-only

Fedora packages [clatd](https://packages.fedoraproject.org/pkgs/clatd/clatd/index.html) to translate flows from an IPv6-only client to IPv4 hosts via NAT46, so it can be transmitted and then translated back via NAT64 in a PLAT device, e.g. at the edge in a CPE or in an ISP network. Although `clatd` is functional there was no actual testing in my networks, yet.

### Swap on ZRAM

The [ZRAM](https://github.com/torvalds/linux/tree/master/drivers/block/zram) Linux kernel module is capable of creating compressed ram disks. Since being block devices they can be formatted with any filesystem. Fedora uses [Swap on ZRAM](https://fedoraproject.org/wiki/Changes/SwapOnZRAM) by default on all Spins.

There exist several packages to configure compressed ZRAM drives and some are conveniently setting one up as swap. Fedora uses the [systemd-zram-generator](https://github.com/systemd/zram-generator) via its `zram-generator-defaults` package. Starting with v1.2.1 it supports (via https://github.com/systemd/zram-generator/issues/178 and https://github.com/systemd/zram-generator/pull/200) the configuration of secondary compression algorithms to recompress pages on a ZRAM drive. Furthermore ZRAM requires recompression to be triggered by touching a knob in sysfs, which is out of scope of the project.

It is important to know that in ZRAM terms _incompressible_ (e.g. with one compression algorithm but not necessarily with another) pages are called `huge`; Linux's Memory Management subsystem also has a concept of [`huge pages`](https://docs.kernel.org/admin-guide/mm/concepts.html#huge-pages) but means something entirely different. On top of that marking pages as `idle` requires memory tracking which Fedora / Bazzite currently deactivates in production kernels. The actual implementation neither relies on either huge or idle pages.

#### Implementation

The Linux Memory Mangement subsystem has been heavily tilted in [20-zram-swap.conf](files/system/etc/sysctl.d/20-zram-swap.conf) for swapping out pages by setting `swappiness=180` and the swap's page readahead was deactivated by setting `page_cluster=0` to improve random IOPS with the cost of more page faults. Some synthetic benchmarks (see links below) measured ~2M IOPS with `lz4` and ~820k IOPS with `zstd1`. Other values were essentially collected from the Arch Linux documentation and some blog posts I've also linked below.

Therefore ZRAM is configured in [zram-generator.conf](files/system/etc/systemd/zram-generator.conf) to use `lz4` as a fast, low-latency compression algorithm and `zstd1` as secondary one. The system will try to recompress some amount of pages once every few seconds. The exact amount of pages is scaled with the system's resources, depending on the total system memory per CPU core as a simple metric.

To actually facilitate recompression it uses a [zram-recompression.timer](files/system/etc/systemd/system/zram-recompression.timer) to orchestrate the one-off execution of a [zram-recompression.service](files/system/etc/systemd/system/zram-recompression.service). Since freed memory is likely to become fragmented over time another set of systemd units, a [zram-compaction.service](files/system/etc/systemd/system/zram-compaction.service) and a [zram-compaction.timer](files/system/etc/systemd/system/zram-compaction.timer) have been created. The Service units are configured to trigger either compaction for all existing ZRAM devices or recompression for the ZRAM swap drive. Timers add a randomized delay of up to 10% to the cycle time.

#### Outcome

On a device with <4 GiB usable memory, I've observed ratios up to ~4:1 during both normal and heavier usage scenarios (Browser, several Electron shells, E-Mail, password databases, office application, file synchronization, screen capture, image manipulation, ...) while the system stays _mostly_ reactive. With this configuration I try to achieve a good user experience, but the capabilities of my system are still limited. At the very least it is fun to work with. ;c)

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
- [Fedora Wiki - Changes/Swap on ZRAM](https://fedoraproject.org/wiki/Changes/SwapOnZRAM)

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
