# OmegaSquad82/BlueBuilds &nbsp;

[![image-build](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build-image.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build-image.yml)
[![vuln-scan](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/vulnerability-scan.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/vulnerability-scan.yml)
[![Dependabot Updates](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Images

All images are built with a selection of common packages as well as some configuration.

### [Aubertit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Aubertit)

It is a flavor of [Bazzite](https://bazzite.gg/) Stable for ASUS Laptops with NVIDIA dGPU.

### [Buttgenbachit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Buttgenbachit)

Bazzite Stable for either desktop or laptop gaming.

### [Carbonatcyanotrichit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Carbonatcyanotrichit)

Bazzite Deck Stable for Steam Deck clone(s).

### [Flaviramea](https://www.ecosia.org/search?tt=mzl&q=Cornus%20sericea%20Flaviramea)

SecureBlue Sericea suitable for low resource footprint devices (e.g. netbooks).

## Customizations

### Podman

The `podman.service` should be enabled on Buttgenbachit and otherwise either disabled or masked.

### SSH Server

The OpenSSH Server Daemon should be enabled on all images ecept Flaviramea.

### 464XLAT for IPv6-only

Fedora packages [clatd](https://packages.fedoraproject.org/pkgs/clatd/clatd/index.html) to translate flows from an IPv6-only client to IPv4 hosts via NAT46, so it can be transmitted and then translated back via NAT64 in a PLAT device, e.g. at the edge in a CPE or in an ISP network. Although `clatd` is installed there was no actual testing in my networks, yet.

### Swap on ZRAM

See [ZRAM.md](ZRAM.md) for more information.

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
