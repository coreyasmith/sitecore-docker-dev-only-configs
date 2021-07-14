# 🐳 Development-only Configurations for Sitecore on Docker

This repository contains code to demonstrate how to backport the
[development-only configuration][1] feature that Sitecore introduced for
containers in Sitecore 10.1, and how to create custom development-only
configuration patches.

The code in this repository is a pared-down fork of the `custom-images` in
[Sitecore's `docker-examples` repository][2]. That repository is an excellent
reference for getting started with Sitecore and Docker.

## 🏗️ Setup

1. Run [`init.ps1`][3] to initialize the repository.
2. Run `docker-compose up -d --build` from the root of the repository.

## 🚀 Usage

Navigate to <https://cd.devonlyconfigs.localhost> to observe the effects of the
development-only configurations on the site.

Change the `SITECORE_DEVELOPMENT_PATCHES` environment variable in the
[`.env`][4] file to adjust which development-only configurations are applied to
the site. Run `docker-compose up -d` to apply the changes to the site. The
list of out-of-the-box development patches can be found [here][5] and custom
patches can be found in [`/docker/build/tools/dev-patches`][6].

[1]: https://doc.sitecore.com/en/developers/101/developer-tools/enabling-development-only-configuration.html
[2]: https://github.com/Sitecore/docker-examples/tree/master
[3]: init.ps1
[4]: .env
[5]: https://github.com/Sitecore/docker-tools/tree/main/image/src/dev-patches
[6]: /docker/build/tools/dev-patches
