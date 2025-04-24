# Changelog

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
