# OmegaSquad82/BlueBuilds &nbsp;

[![bluebuild](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build.yml)
[![bluevuln](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/trivy.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/trivy.yml)
[![Dependabot Updates](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Images

All images are built with a selection of common packages and flatpaks as well as some configuration common to all.

### [Aubertit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Aubertit)

It is a flavor of Bazzite for ASUS Laptops.

### [Buttgenbachit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Buttgenbachit)

Bazzite Stable for desktop gaming.

### [Carbonatcyanotrichit](https://www.mineralienatlas.de/lexikon/index.php/MineralData?lang=en&language=english&mineral=Carbonatcyanotrichit)

Bazzite Deck Stable for my Steam Deck clone.

### [Flaviramea](https://www.ecosia.org/search?tt=mzl&q=Cornus%20sericea%20Flaviramea)

My netbook still exists and is dear to me and so it is running Sway, now.

## Customizations

### Bazzite

The `tailscaled.service` is disabled on Aubertit, Buttgenbachit and Carbonatcyanotrichit.

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
