# Changelog

## [1.11.3](https://github.com/OmegaSquad82/bluebuilds/compare/v1.11.2...v1.11.3) (2025-07-08)


### Bug Fixes

* add phoronix-test-suite ([33ffa09](https://github.com/OmegaSquad82/bluebuilds/commit/33ffa097a1c15ccb320a766771818216b6850c7b))
* add phoronix-test-suite ([108bc20](https://github.com/OmegaSquad82/bluebuilds/commit/108bc207572be131339f3777e683062cd57b6bc7))

## [1.11.2](https://github.com/OmegaSquad82/bluebuilds/compare/v1.11.1...v1.11.2) (2025-06-13)


### Bug Fixes

* keep firefox for Selenium benchmarks ([0260874](https://github.com/OmegaSquad82/bluebuilds/commit/0260874671c127cb35a6e428b21aabac218a1e37))

## [1.11.1](https://github.com/OmegaSquad82/bluebuilds/compare/v1.11.0...v1.11.1) (2025-06-10)


### Bug Fixes

* create latest-zstchd tag when on main branch ([e07e2cc](https://github.com/OmegaSquad82/bluebuilds/commit/e07e2ccf4e8b03a546cfaa0861cb3832c5ccb81a))
* create latest-zstchd tag when on main branch ([c21b61f](https://github.com/OmegaSquad82/bluebuilds/commit/c21b61f99dec26f77e70d20a82d4bf0ee0933adc))
* ENVironment not VARs in gh actions ... ([132efcb](https://github.com/OmegaSquad82/bluebuilds/commit/132efcb4e669089c1ffb3afdd1645a975468e880))
* no additional tags by pushing again ([c6d10b3](https://github.com/OmegaSquad82/bluebuilds/commit/c6d10b31474b096a6cb13285d54d3eacc9098986))

## [1.11.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.10.5...v1.11.0) (2025-06-06)


### Features

* try to improve build time but risk storage filling up ([68c992a](https://github.com/OmegaSquad82/bluebuilds/commit/68c992aadf98a98b775a660a72fd030c8b5c7403))
* try to improve build time but risk storage filling up ([cfaabf3](https://github.com/OmegaSquad82/bluebuilds/commit/cfaabf3f34eabb645217aa7a5313b77dd7f74caa))

## [1.10.5](https://github.com/OmegaSquad82/bluebuilds/compare/v1.10.4...v1.10.5) (2025-06-05)


### Bug Fixes

* add registry username+password, again ([a4d3d1f](https://github.com/OmegaSquad82/bluebuilds/commit/a4d3d1fc7ed2eb6391b51254f267801e28326be1))
* add some bailout primitive to image reference task ([808e536](https://github.com/OmegaSquad82/bluebuilds/commit/808e536ca9615ebb2115dd69e67d5798fb32b416))
* boolean evaluation is tricky? ([3d852c0](https://github.com/OmegaSquad82/bluebuilds/commit/3d852c06c1f5543b44ac03f6b36565e59ccedd14))
* clumsily pull latest from remote although image is in /var/lib/containers/storage ([b284a3b](https://github.com/OmegaSquad82/bluebuilds/commit/b284a3bf6be068ab8fb60d665dc5fa9b9ed30e24))
* clumsily pull latest from remote although image is in /var/lib/containers/storage ([5ccec30](https://github.com/OmegaSquad82/bluebuilds/commit/5ccec30289510c8b6c7d9a5fb101667dba116eb8))
* improve redirections into gh env ([d28777b](https://github.com/OmegaSquad82/bluebuilds/commit/d28777bbf9fb42d6c2ca0f3be0b01842e7dca3b0))
* instead of falling back to rootful podman, simply check if the correct image was found. ([35bdcc4](https://github.com/OmegaSquad82/bluebuilds/commit/35bdcc4877b819f8e75df8b45c01355019170a88))
* missing $ and changed to full repo name ([d4ecef1](https://github.com/OmegaSquad82/bluebuilds/commit/d4ecef10e09b757b4fc2bc989d5d845dde961e8a))
* need to refresh the image listing ([591225f](https://github.com/OmegaSquad82/bluebuilds/commit/591225f047e01ce23f6b2251e4de10c79cdb132d))
* reclaim /run/user/$uid ([551c14b](https://github.com/OmegaSquad82/bluebuilds/commit/551c14b0ef21122a46539d57a5fac633be5ec513))
* self inflicted shenanigans with gh env ;c) ([7d49595](https://github.com/OmegaSquad82/bluebuilds/commit/7d49595af4bdfd20e934d012b713a53e6c66c70a))
* seperate subvolumes again (cus' podman does NOT support this use case!) ([60bf4b7](https://github.com/OmegaSquad82/bluebuilds/commit/60bf4b7abf8dfb3090ae99fe033f4bac42fdb31d))
* support rootless and rootful podman operation ([8d0e71d](https://github.com/OmegaSquad82/bluebuilds/commit/8d0e71db1065b19fe77c1b444fa4f41087dbe48e))
* try to reduce normal build time by not maximizing_build_space when rechunk'ing ([abce30a](https://github.com/OmegaSquad82/bluebuilds/commit/abce30a9b7ebc386fb95aeb923ec81926ea11e15))
* typo led me to use native jq syntax. ^^ ([181086e](https://github.com/OmegaSquad82/bluebuilds/commit/181086e06729cc702a0feefbc5e3d42f8b51363c))
* use system container storage subvolume for non-root account and display number of locally available images, print first name of most recent image in local store. ([955745b](https://github.com/OmegaSquad82/bluebuilds/commit/955745b4fe1e618c176457af32c96484d440b6ee))

## [1.10.4](https://github.com/OmegaSquad82/bluebuilds/compare/v1.10.3...v1.10.4) (2025-06-05)


### Bug Fixes

* images referenced by digest are delimited by @ ([9bf51fe](https://github.com/OmegaSquad82/bluebuilds/commit/9bf51fe660977cb4501f23800d7672254f995b47))
* leftover task name after image repo variable ([9a72010](https://github.com/OmegaSquad82/bluebuilds/commit/9a72010fab1d9b5568c2faaba111ce76f08727cb))
* re-introduce proper podman login ghcr.io ([063bd10](https://github.com/OmegaSquad82/bluebuilds/commit/063bd1052e9cf0c0568ace766f95ee5886c6a685))
* remove clumsy debugging stuff ([8b1c2e4](https://github.com/OmegaSquad82/bluebuilds/commit/8b1c2e4283ab516751c022105606c0e11203bf6f))
* remove superfluous podman login after push ([7568d2a](https://github.com/OmegaSquad82/bluebuilds/commit/7568d2a40893b961429dc57b06c4bf9001384c16))
* squash image and compress it with Podman in bluebuild CLI ([0cf7f17](https://github.com/OmegaSquad82/bluebuilds/commit/0cf7f17958598f5bbcdccdb01e6d7aa814c7ffcf))
* squash image when using rechunk ([7eb4e26](https://github.com/OmegaSquad82/bluebuilds/commit/7eb4e268f066800d5c573399940d54d0eb6e6d81))
* superfluous pull and recompress freshly built image instead of latest ([60e2797](https://github.com/OmegaSquad82/bluebuilds/commit/60e27976640c399baf54afdd0e06964683e6780f))
* tried to push into wrong repository ([ca21d33](https://github.com/OmegaSquad82/bluebuilds/commit/ca21d33994bbf45329e2a3f5579421b8ccb48d69))
* try to compress via prodman ([7eb4e26](https://github.com/OmegaSquad82/bluebuilds/commit/7eb4e268f066800d5c573399940d54d0eb6e6d81))
* use image digest for retrieving its history ([a6bee65](https://github.com/OmegaSquad82/bluebuilds/commit/a6bee65da2c1b1b69d57ede669999728d1d34f39))
* use ref_name to construct the tag ([72f1d42](https://github.com/OmegaSquad82/bluebuilds/commit/72f1d42c910defa4264b12febeade24a4205dfb3))

## [1.10.3](https://github.com/OmegaSquad82/bluebuilds/compare/v1.10.2...v1.10.3) (2025-06-05)


### Bug Fixes

* login and pull before pushing back as zstd:chunked ([6b6ad3d](https://github.com/OmegaSquad82/bluebuilds/commit/6b6ad3dc6a099231b877e37a855196dfdfbf30fc))
* login and pull before pushing back as zstd:chunked ([6ed8393](https://github.com/OmegaSquad82/bluebuilds/commit/6ed8393396e7d98997f14018fa89a99047e6f3fc))
* show podman history ([06ef56d](https://github.com/OmegaSquad82/bluebuilds/commit/06ef56d84adb2bc66754e7d4c3f01d10d17a8519))

## [1.10.2](https://github.com/OmegaSquad82/bluebuilds/compare/v1.10.1...v1.10.2) (2025-06-03)


### Bug Fixes

* re-introduce kargs via bootc and blue-build ([7b970fa](https://github.com/OmegaSquad82/bluebuilds/commit/7b970fa1440ad283286f52a66054fde901c4f40a))
* re-introduce kargs via bootc and blue-build ([31a1a82](https://github.com/OmegaSquad82/bluebuilds/commit/31a1a8254f374904ef9b4f2f98b6a62a47626182))

## [1.10.1](https://github.com/OmegaSquad82/bluebuilds/compare/v1.10.0...v1.10.1) (2025-06-03)


### Bug Fixes

* increase compression level of zstd:chunked from 3 to 6 ([70d7c16](https://github.com/OmegaSquad82/bluebuilds/commit/70d7c1644d8242075b622a365a58f40d05d5f5f7))
* increase compression level of zstd:chunked from 3 to 6 ([8e302b6](https://github.com/OmegaSquad82/bluebuilds/commit/8e302b658eaa08b56081284ba37b7faa1b562f3a))

## [1.10.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.9.0...v1.10.0) (2025-06-03)


### Features

* recompress directly after building an image ([f9a0a55](https://github.com/OmegaSquad82/bluebuilds/commit/f9a0a550090d1289f23e978c742a1db6133ec68e))


### Bug Fixes

* Compress critical paths use a single, compressed btrfs filesystem ([2a6dfb2](https://github.com/OmegaSquad82/bluebuilds/commit/2a6dfb28d1e07981ce1cec2e4d3337ce6bcfb682))
* give ublue/bazzite more time ([f9a0a55](https://github.com/OmegaSquad82/bluebuilds/commit/f9a0a550090d1289f23e978c742a1db6133ec68e))
* pipefail in shells of build-image.yml ([f9a0a55](https://github.com/OmegaSquad82/bluebuilds/commit/f9a0a550090d1289f23e978c742a1db6133ec68e))

## [1.9.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.7...v1.9.0) (2025-05-25)


### Features

* add podman-docker for funsies but not profits ([7a3ecfd](https://github.com/OmegaSquad82/bluebuilds/commit/7a3ecfd439a7e2cdc59529c415eaba6cf9fa9a9f))

## [1.8.7](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.6...v1.8.7) (2025-05-24)


### Bug Fixes

* add some shots of htop's cpu, memory, swap and zram meter bars ([5716a35](https://github.com/OmegaSquad82/bluebuilds/commit/5716a359fe71ffaea8d0488aa238c46161a59be0))
* add some shots of htop's cpu, memory, swap and zram meter bars ([6e3c6c7](https://github.com/OmegaSquad82/bluebuilds/commit/6e3c6c7a2dcd30621500c5c24e6e270ff17f5d33))

## [1.8.6](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.5...v1.8.6) (2025-05-17)


### Bug Fixes

* missing package rmlint for btrfs-dedup@var-home.service ([82e8c53](https://github.com/OmegaSquad82/bluebuilds/commit/82e8c534ee45dfb419dd1b1d229325776753acf5))
* missing package rmlint for btrfs-dedup@var-home.service ([fb4d607](https://github.com/OmegaSquad82/bluebuilds/commit/fb4d60786849032f0f698d0a7264c75c20fec4ed))

## [1.8.5](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.4...v1.8.5) (2025-05-08)


### Bug Fixes

* scale recompression with available ram per cpu core ([b1292b2](https://github.com/OmegaSquad82/bluebuilds/commit/b1292b212a4e7b5c88a156233bfb2ff19631bcf0))
* use zstd level 1 for near realtime recompression ([c80e72d](https://github.com/OmegaSquad82/bluebuilds/commit/c80e72d6363219e16782345649dbbee1b2bf8f06))
* use zstd level 1 for near realtime recompression ([b1292b2](https://github.com/OmegaSquad82/bluebuilds/commit/b1292b212a4e7b5c88a156233bfb2ff19631bcf0))

## [1.8.4](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.3...v1.8.4) (2025-05-06)


### Bug Fixes

* remove lz4hc as secondary compression algorithm and update documentation ([1ef5262](https://github.com/OmegaSquad82/bluebuilds/commit/1ef5262b8f823110f102d6f5146cd6d2d988b150))

## [1.8.3](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.2...v1.8.3) (2025-05-06)


### Bug Fixes

* slow down zram recompression timer but process more pages (33% net increase) ([7b39b70](https://github.com/OmegaSquad82/bluebuilds/commit/7b39b70f4511765b89f94af4081f8a5c5bb250bc))

## [1.8.2](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.1...v1.8.2) (2025-05-06)


### Bug Fixes

* remove for loop and use glob to select all zram devices ([e4e7817](https://github.com/OmegaSquad82/bluebuilds/commit/e4e781721cdeea8c04c08f4838800984590674c4))

## [1.8.1](https://github.com/OmegaSquad82/bluebuilds/compare/v1.8.0...v1.8.1) (2025-05-05)


### Bug Fixes

* further simplify zram recompression ([aaa442b](https://github.com/OmegaSquad82/bluebuilds/commit/aaa442bc0399e1e914e6996f5f4d39d387c648bc))

## [1.8.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.7.0...v1.8.0) (2025-05-05)


### Features

* new zram-compaction Service and Timer ([6194abb](https://github.com/OmegaSquad82/bluebuilds/commit/6194abbb039504500c0b28df19455d2b59bee08f))
* new zram-idling Service and Timer ([fd46c18](https://github.com/OmegaSquad82/bluebuilds/commit/fd46c18aac5a3b5d9d122facaec2a01b2147a915))
* zram-recompression.service writes to sysfs without calling recompress-zram script ([f13a171](https://github.com/OmegaSquad82/bluebuilds/commit/f13a171bf827507086931db7247b086b41724a2c))


### Bug Fixes

* LACT can now be installed as a flatpak and bazzite removed the COPR ([e68e5fd](https://github.com/OmegaSquad82/bluebuilds/commit/e68e5fd9b40104af5f8d8f29808e19d915422a0e))
* parameter handling in recompress-zram ([66d0b2b](https://github.com/OmegaSquad82/bluebuilds/commit/66d0b2b239d7af9cabe03744521c012f39575e96))

## [1.7.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.6.0...v1.7.0) (2025-04-24)


### Features

* rebase Flaviramea onto gchr.io/ublue-os/sway-atomic-main ([0f19fc9](https://github.com/OmegaSquad82/bluebuilds/commit/0f19fc974ec7dae24919d9c3abecaa1e07d61b08))
* rebase Flaviramea onto gchr.io/ublue-os/sway-atomic-main ([784060f](https://github.com/OmegaSquad82/bluebuilds/commit/784060f8c91360343ba0ec423830102696fdf89e))
* use clatd from Fedora Rawhide (43) ([0b423aa](https://github.com/OmegaSquad82/bluebuilds/commit/0b423aa63018621f39f30133295a17f6418e37d5))
* use clatd from Fedora Rawhide (fc43) ([59460d7](https://github.com/OmegaSquad82/bluebuilds/commit/59460d72fb7d72d0375894ea5ed5ec9e1905a978))
* use fedora's build of the zram-generator ([7763912](https://github.com/OmegaSquad82/bluebuilds/commit/776391219a6ceb8355f87f5d15ff80c0481f64ce))
* use fedora's build of the zram-generator ([1cdea88](https://github.com/OmegaSquad82/bluebuilds/commit/1cdea8800981c9617540ddca5ab0283370a98165))


### Bug Fixes

* fix all images and use built zram-generator in flaviramea ([07d597f](https://github.com/OmegaSquad82/bluebuilds/commit/07d597fd0a71d86cd5f8346df862f1704650f7c7))

## [1.6.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.5.1...v1.6.0) (2025-04-17)


### Features

* rebase to bazzite 42 by trying to move /usr/sbin to /usr/bin ;c) ([710e382](https://github.com/OmegaSquad82/bluebuilds/commit/710e38294bd22b5458bdb866289bd4d541e0c54f))


### Bug Fixes

* rebase to bazzite 42 by trying to move /usr/sbin to /usr/bin ;c) ([5770f6f](https://github.com/OmegaSquad82/bluebuilds/commit/5770f6f7a8f78db4084b01fc761aa22a68d42bf2))

## [1.5.1](https://github.com/OmegaSquad82/bluebuilds/compare/v1.5.0...v1.5.1) (2025-04-14)


### Bug Fixes

* mask system services ([5b3dcf8](https://github.com/OmegaSquad82/bluebuilds/commit/5b3dcf8159dc26607f70d81a369bb9c9d105ee3d))

## [1.5.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.4.0...v1.5.0) (2025-04-11)


### Features

* decompose morepaks.yml and yield separate libation and hhd ([8cc9f20](https://github.com/OmegaSquad82/bluebuilds/commit/8cc9f2009feecc4bf152e30181cdf1b34c1db437))
* have all pages be marked as idle ([37c6c5f](https://github.com/OmegaSquad82/bluebuilds/commit/37c6c5f039a12e1768e8cd9afb809706f5e0c0af))
* include HandHeldDaemon in buttgenbachit ([35cd833](https://github.com/OmegaSquad82/bluebuilds/commit/35cd8339e4a1bdd86081b81c24cb1be0c165671e))
* increase frequency of zram-recompression to once per minute. ([3d25ec6](https://github.com/OmegaSquad82/bluebuilds/commit/3d25ec6fe046df007e047cf62a1ce61e3f457362))
* increase frequency of zram-recompression to once per minute. ([37c6c5f](https://github.com/OmegaSquad82/bluebuilds/commit/37c6c5f039a12e1768e8cd9afb809706f5e0c0af))
* set it to try to recompress 1024 pages ([37c6c5f](https://github.com/OmegaSquad82/bluebuilds/commit/37c6c5f039a12e1768e8cd9afb809706f5e0c0af))
* update build-isos to build outside of repository dir ([2fb46e4](https://github.com/OmegaSquad82/bluebuilds/commit/2fb46e479d049ccbdb0d6b89490ae7d7be50a63a))
* update build-isos to select an image to build ([83fddf3](https://github.com/OmegaSquad82/bluebuilds/commit/83fddf398150509ff05cd0f729a1bbd96b97dcb7))
* update build-isos to select an image to build ([2fb46e4](https://github.com/OmegaSquad82/bluebuilds/commit/2fb46e479d049ccbdb0d6b89490ae7d7be50a63a))
* upgrade Libation from v11.6.4 to v12.2.0 ([528db77](https://github.com/OmegaSquad82/bluebuilds/commit/528db779b8c62bf707583be5d4d91ebd5ca87833))
* upgrade Libation from v11.6.4 to v12.2.0 ([35cd833](https://github.com/OmegaSquad82/bluebuilds/commit/35cd8339e4a1bdd86081b81c24cb1be0c165671e))
* use intrinsic parameter of recompress-zram only instead of handing it over in the service. ([37c6c5f](https://github.com/OmegaSquad82/bluebuilds/commit/37c6c5f039a12e1768e8cd9afb809706f5e0c0af))


### Bug Fixes

* changed from systemd unit "hhd" to "hhd@" ([dcfbb4e](https://github.com/OmegaSquad82/bluebuilds/commit/dcfbb4e7722b61bd81ae2c1c712068f878118f48))
* hhd@ is a system- instead of a user service unit ([8cc9f20](https://github.com/OmegaSquad82/bluebuilds/commit/8cc9f2009feecc4bf152e30181cdf1b34c1db437))
* remove push trigger in recompress-latest.yml ([499adf1](https://github.com/OmegaSquad82/bluebuilds/commit/499adf1237a3ea37a83578873856e96d3314056a))
* remove push trigger in recompress-latest.yml ([1d52800](https://github.com/OmegaSquad82/bluebuilds/commit/1d528007daa70bf4f176de77a5f814e74d95cc05))
* single source of truth for recompression parameters ([e063190](https://github.com/OmegaSquad82/bluebuilds/commit/e063190dfb8516f987b075b05f256b5f3ef8ce1b))
* try the hhd-user unit... ([5786986](https://github.com/OmegaSquad82/bluebuilds/commit/5786986d4b6e981d7ad928ae05f3bea5ae0cc2f5))
* update documentation on zram recompression ([29d6f47](https://github.com/OmegaSquad82/bluebuilds/commit/29d6f4789a74b0a204fdd40b74afcf106ed8d50d))
* update documentation on zram recompression ([e063190](https://github.com/OmegaSquad82/bluebuilds/commit/e063190dfb8516f987b075b05f256b5f3ef8ce1b))
* update README.md with 464xlat info ([eab423d](https://github.com/OmegaSquad82/bluebuilds/commit/eab423dd307252c320c1e84d59b4e0cb574b73d7))
* update README.md with 464xlat info ([8b431b0](https://github.com/OmegaSquad82/bluebuilds/commit/8b431b0685208bcfa0d1b9d9557bb68e5c0f1669))
* use correct computing architecture for Libation ([426c63a](https://github.com/OmegaSquad82/bluebuilds/commit/426c63aac8c4077eb68a16db886d05f17f042717))
* verbose parameter for recompress-zram was shifted away ([e063190](https://github.com/OmegaSquad82/bluebuilds/commit/e063190dfb8516f987b075b05f256b5f3ef8ce1b))

## [1.4.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.3.0...v1.4.0) (2025-03-31)


### Features

* get rid of Firefox in Flaviramea ([b122949](https://github.com/OmegaSquad82/bluebuilds/commit/b1229490991ed86aebd251e1538afb44945c8f49))
* Update README.md ([ed296d4](https://github.com/OmegaSquad82/bluebuilds/commit/ed296d4fa60f0854f58e9478fa35ead59cc1b528))

## [1.3.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.2.1...v1.3.0) (2025-03-14)


### Features

* build-zram-generator.sh should trace commands ([139a3b2](https://github.com/OmegaSquad82/bluebuilds/commit/139a3b2ee9f8ee838e3d5d6a617127cc757a3dfb))
* build-zram-generator.sh should trace commands ([6aff7cb](https://github.com/OmegaSquad82/bluebuilds/commit/6aff7cb9947d856bb73825519b2111c01d9eb496))
* support clatd via TAYGA ([c1f84a6](https://github.com/OmegaSquad82/bluebuilds/commit/c1f84a6eea7a01d5229cb465ad01e3748c2b7fc6))
* support clatd via TAYGA ([620ca1e](https://github.com/OmegaSquad82/bluebuilds/commit/620ca1e736c66ea7692cea6ca21a4d625d4d4eec))


### Bug Fixes

* call clatd for help ([ce459e6](https://github.com/OmegaSquad82/bluebuilds/commit/ce459e66e97618bffbbfd71c6fcd6956486017cc))
* copy paste error from github repository ([763c4a8](https://github.com/OmegaSquad82/bluebuilds/commit/763c4a883c3cc87c4918af09d0084971a31f5e61))
* debug install-clatd.sh ([874961b](https://github.com/OmegaSquad82/bluebuilds/commit/874961b5e84384123623e5ca953e1bceb1ddcd7a))
* enable clatd.service ([52db907](https://github.com/OmegaSquad82/bluebuilds/commit/52db907f0738eb8cd07088fb508b36168018cbcf))
* executable bit ([173dc53](https://github.com/OmegaSquad82/bluebuilds/commit/173dc53c3088d9dbcd01a7c6f30089e98e87d0fc))
* it's an ugly workaround ;c) ([4a69ce0](https://github.com/OmegaSquad82/bluebuilds/commit/4a69ce0ede9674ce49bad32549e7eefcc3d13a3d))
* it's the order of things ([ca92c40](https://github.com/OmegaSquad82/bluebuilds/commit/ca92c400efad0721771c78f021c1edf2aa4f744b))
* it's the order of things ([1285cd6](https://github.com/OmegaSquad82/bluebuilds/commit/1285cd66c985cbd97af33272f3f73e6717b0bac4))
* let pod2man convert the manual ([7e9cbbc](https://github.com/OmegaSquad82/bluebuilds/commit/7e9cbbcc6e1277c6edb430de883ec4ffee79bdc0))
* LibreWolf package name ([3bb48a9](https://github.com/OmegaSquad82/bluebuilds/commit/3bb48a997b68512f32bc205ee74040732f835446))
* lol ([ce8c15c](https://github.com/OmegaSquad82/bluebuilds/commit/ce8c15c34ac240179952a8854c8ab950ef50e669))
* manipulation of Makefile ([c1cc90c](https://github.com/OmegaSquad82/bluebuilds/commit/c1cc90c9ad9cc00a79e8dc5562d4e6ed8f80bf63))
* need make to install clatd ([4b70d3d](https://github.com/OmegaSquad82/bluebuilds/commit/4b70d3d07731cdfd424f01a9b47d9286c87a2902))
* provide TAYGA via dnf5 ([5f16056](https://github.com/OmegaSquad82/bluebuilds/commit/5f160564cc07c6cba6a95fff146a3418cd1ad95b))
* update Makefile of clatd ([39f4930](https://github.com/OmegaSquad82/bluebuilds/commit/39f4930ea18ff455e992daa9e6659e7ce55d23c4))
* work around a Makefile?! ([5e6811c](https://github.com/OmegaSquad82/bluebuilds/commit/5e6811c78561e66f4ca3b9f038c0adde494f3b24))

## [1.2.1](https://github.com/OmegaSquad82/bluebuilds/compare/v1.2.0...v1.2.1) (2025-02-16)


### Bug Fixes

* no push trigger for composition analysis ([80655f7](https://github.com/OmegaSquad82/bluebuilds/commit/80655f731ba78c8097c6153f2fcc760b25f6e86f))

## [1.2.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.1.0...v1.2.0) (2025-02-14)


### Features

* add Calibre for select images ([5beb850](https://github.com/OmegaSquad82/bluebuilds/commit/5beb85078ab2a5c33f999713a41f1ec118aad0d4))
* add secret, misconfig and license scanners to trivy ([44ea14b](https://github.com/OmegaSquad82/bluebuilds/commit/44ea14bb7793b0c455899346bcbb81afcfc1a5d1))
* remove install libvirt and qemu as it is provided by Bazzite ([c574f74](https://github.com/OmegaSquad82/bluebuilds/commit/c574f74182f2b43f581e413ef5ef157d45f96fef))


### Bug Fixes

* Calibre flatpak name ([6a27ed1](https://github.com/OmegaSquad82/bluebuilds/commit/6a27ed1e63aed18c4818284dc2e1fb5c339f873b))
* no secret scanning in built image ([797c547](https://github.com/OmegaSquad82/bluebuilds/commit/797c54766de57d3f186440066c6d1888c898523f))
* set default envs in workflows ([44ea14b](https://github.com/OmegaSquad82/bluebuilds/commit/44ea14bb7793b0c455899346bcbb81afcfc1a5d1))

## [1.1.0](https://github.com/OmegaSquad82/bluebuilds/compare/v1.0.0...v1.1.0) (2025-02-06)


### Features

* add philips-labs/tern-action@v1.1.0 ([199197d](https://github.com/OmegaSquad82/bluebuilds/commit/199197deeda9ee70437f084c19027a242081d3a5))
* colorize and format JSON output of GHAs via jq ([bf3f8b1](https://github.com/OmegaSquad82/bluebuilds/commit/bf3f8b194ae57ff3d0169f29bed963e07b1e2df2))
* Create recompress-latest.yml ([de8182f](https://github.com/OmegaSquad82/bluebuilds/commit/de8182f2121e7fc686896a621b087f4f57521dea))
* don't use control structures at large in ci workflows ([bf3f8b1](https://github.com/OmegaSquad82/bluebuilds/commit/bf3f8b194ae57ff3d0169f29bed963e07b1e2df2))
* only run software composition analysis in default branch ([1b4ec5e](https://github.com/OmegaSquad82/bluebuilds/commit/1b4ec5ea31bb81eb128e294bf17064b485fb3548))
* remove SCA from building workflow ([4049b74](https://github.com/OmegaSquad82/bluebuilds/commit/4049b74a9934b07b33bad7d0bcc1c797cfcbccf8))
* run vulnerability-scan workflow once a day after build ([1f4aff1](https://github.com/OmegaSquad82/bluebuilds/commit/1f4aff10f05cfc3259c52fb0d4da7324e7825f58))
* separate composition-analysis workflow ([b291541](https://github.com/OmegaSquad82/bluebuilds/commit/b29154119ed8cb3eec5392da7009b4eb0b247bd7))
* use oss-review-toolkit/ort-ci-github-action@v1 instead of running Trivy here ([6020fe2](https://github.com/OmegaSquad82/bluebuilds/commit/6020fe23d92f15719964964fb3b0c336f7feca4c))


### Bug Fixes

* align with build and sort things ([4f93a00](https://github.com/OmegaSquad82/bluebuilds/commit/4f93a001cdc454b99b84356f12bc3d27480eafc4))
* aligned executed times to execute sequentially after build ([bf3f8b1](https://github.com/OmegaSquad82/bluebuilds/commit/bf3f8b194ae57ff3d0169f29bed963e07b1e2df2))
* build-image should run when it has changed ([737646c](https://github.com/OmegaSquad82/bluebuilds/commit/737646c4cc9f8df19e389c96440420217cffd450))
* differentiate ORT runs per built artifact ([5aa28c4](https://github.com/OmegaSquad82/bluebuilds/commit/5aa28c411c66eabaf404070fffa6c0b6ef2005e5))
* GitHub blocks actions/upload-artifact@v2 so use v4 ([0a5acdb](https://github.com/OmegaSquad82/bluebuilds/commit/0a5acdb8b183c04d58a98e8cea2908211eea95eb))
* hand over full image name ([1b4ec5e](https://github.com/OmegaSquad82/bluebuilds/commit/1b4ec5ea31bb81eb128e294bf17064b485fb3548))
* image reference in recompression workflow ([959311d](https://github.com/OmegaSquad82/bluebuilds/commit/959311dbec445727a90c846e9597aba79beb5690))
* Job names were flat out wrong ([03d162e](https://github.com/OmegaSquad82/bluebuilds/commit/03d162e315cde778255948c6f49a81d6d22d82f4))
* must find non-build workflows in a (nested) subdirectory ([cc9152e](https://github.com/OmegaSquad82/bluebuilds/commit/cc9152e5506064ee0dd00e9ecb7c800ae865d85a))
* must find non-vuln workflows in a (nested) subdirectory ([1845ccf](https://github.com/OmegaSquad82/bluebuilds/commit/1845ccf513c56ab47c5f56dd101e792f53381442))
* no execution after change in composition-analysis.yml ([cc73ad7](https://github.com/OmegaSquad82/bluebuilds/commit/cc73ad713b749596b803ac7d8fea0e9f08e9eb79))
* paths-ignore filter in build ci ([49dacef](https://github.com/OmegaSquad82/bluebuilds/commit/49dacefdfe54d64945a20f631969258478770c2e))
* polished all of the decomposed ci workflows ([bf3f8b1](https://github.com/OmegaSquad82/bluebuilds/commit/bf3f8b194ae57ff3d0169f29bed963e07b1e2df2))
* quoting around print output steps ([e6b6127](https://github.com/OmegaSquad82/bluebuilds/commit/e6b612747f70d718196a7e7a2f14615235a05aa1))
* Rename composition-analysis to composition-analysis.yml ([65742ba](https://github.com/OmegaSquad82/bluebuilds/commit/65742bafbaf74466ff112ae65e01d75cbb7b9370))
* stall vuln-scan up to 3min ([ff535fb](https://github.com/OmegaSquad82/bluebuilds/commit/ff535fbf9be326148c24f4b11d5028cc1210a352))
* Update build-image.yml to exclude recompress-latest.yml ([7ab5213](https://github.com/OmegaSquad82/bluebuilds/commit/7ab5213e1e2ef0e28f0906b8852ae5b07a53f7ea))
* Update composition-analysis.yml to exclude recompress-latest.yml ([c9c2bea](https://github.com/OmegaSquad82/bluebuilds/commit/c9c2bea02fae8fe1264ad5cf35b3244e8e8bbd57))
* Update vulnerability-scan.yml to exclude recompress-latest.yml ([1f4aff1](https://github.com/OmegaSquad82/bluebuilds/commit/1f4aff10f05cfc3259c52fb0d4da7324e7825f58))
* use only latest as singular tag to handle ([a346222](https://github.com/OmegaSquad82/bluebuilds/commit/a346222d051716f694e33db53e14a1518569c0cd))

## 1.0.0 (2025-02-01)


### Features

* push zstd:chunked to latest-zstchk ([61d1485](https://github.com/OmegaSquad82/bluebuilds/commit/61d1485b1906d3c48ad0aca674f1950411a1903d))
* switch Aubertit back to bazzite-asus-nvidia ([0ddb4bf](https://github.com/OmegaSquad82/bluebuilds/commit/0ddb4bf99b2683948409452ca8f8cc4b3751a73b))


### Bug Fixes

* logic gate ([eebfdb7](https://github.com/OmegaSquad82/bluebuilds/commit/eebfdb758915dcbe1e9f1863e96e8c1773753451))
* name of tagging function ([7ae641f](https://github.com/OmegaSquad82/bluebuilds/commit/7ae641f00e96c3b59c8983e0ad52ffeeabd199a3))
* Update and rename trivy.yml to vulnerability-scan.yml ([37cf98b](https://github.com/OmegaSquad82/bluebuilds/commit/37cf98bc31d7cb06c8e362b18d8a47659ef1e7f2))
* Update build.yml to reflect renaming ([ef6fb7f](https://github.com/OmegaSquad82/bluebuilds/commit/ef6fb7f4cff5204c6d5c4221f52d0fe085705ca7))
* yat ([ef767bc](https://github.com/OmegaSquad82/bluebuilds/commit/ef767bcb60b2274022856e23d16bf90452e464ac))
* yat ([b8cf48d](https://github.com/OmegaSquad82/bluebuilds/commit/b8cf48dc9e6b5f91d0038e705de9a0a15773efad))
