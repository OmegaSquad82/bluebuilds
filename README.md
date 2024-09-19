# OmegaSquad82/BlueBuilds &nbsp; [![bluebuild](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build.yml/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/build.yml) [![Dependabot Updates](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/OmegaSquad82/bluebuilds/actions/workflows/dependabot/dependabot-updates)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Images

All images are built with a selection of common packages and flatpaks. ZRAM is pre-configured to use system default compression (likely LZ4) and from 2xRAM up to 32 GiB as Swap space and Virtual Memory settings have been configured for both more and low latency swapping.

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

Both _goverlay_ and _mangohud_ packages are installed on top and the _tailscaled_ service is disabled.

### Flatpaks

- BoxBuddy
- Codium
- Discord
- KeepassXC
- LibreOffice
- Mozilla Firefox
- Obsidian
- OpenRGB
- Signal
- SynologyDrive
- Warehouse

### Packages

- byobu
- kitty
- htop
- neovim
- powertop
- tlp

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
