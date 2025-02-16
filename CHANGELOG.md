# Changelog

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
