# sshd-container

[![BuildWithLove](https://img.shields.io/badge/%20built%20with-%20%E2%9D%A4-ff69b4.svg "build with love")](https://github.com/edufolly/sshd-container/stargazers)
[![version](https://img.shields.io/badge/dynamic/yaml?color=orange&label=version&prefix=v&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Fedufolly%2Fsshd-container%2Fmain%2Fversion.yaml)](https://github.com/edufolly/sshd-container)
[![sshd-container](https://img.shields.io/github/license/edufolly/sshd-container)](https://github.com/edufolly/sshd-container)
[![sshd-container](https://img.shields.io/github/actions/workflow/status/edufolly/sshd-container/main.yml?branch=main)](https://github.com/edufolly/sshd-container)

Small container image to test ssh connections.

## Funding

[![BuyMeACoffee](https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg)](https://www.buymeacoffee.com/edufolly)

---

## How to Use
```shell
docker run --rm --name sshd -p 22022:22 -d edufolly/sshd-container:latest
```

## How to Connect
```shell
ssh -p 22022 -o PubkeyAuthentication=no -o UserKnownHostsFile=/dev/null root@127.0.0.1
```

---

## Build
```shell
docker build . --no-cache -t sshd-container
```

## Run
```shell
docker run --rm --name sshd -p 22022:22 -d sshd-container
```
