<h1>
<img src="helpers/testainers-100.png" alt="Testainers" title="Testainers">
sshd-container
</h1>

[![BuildWithLove](https://img.shields.io/badge/%20built%20with-%20%E2%9D%A4-ff69b4.svg "build with love")](https://github.com/testainers/sshd-container/stargazers)
[![Docker Image Version](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.github.com%2Frepos%2Ftestainers%2Fhttpbucket%2Freleases%2Flatest&query=%24.name&label=version&color=orange)](https://hub.docker.com/r/testainers/sshd-container/tags)
[![Licence](https://img.shields.io/github/license/testainers/sshd-container?color=blue)](https://github.com/testainers/sshd-container/blob/main/LICENCE)
[![Build](https://img.shields.io/github/actions/workflow/status/testainers/sshd-container/main.yml?branch=main)](https://github.com/testainers/sshd-container/releases/latest)

The small container image is designed specifically for testing SSH connections.

It serves as a lightweight and efficient tool to verify and troubleshoot SSH
connectivity in various scenarios. With its compact size, the container can be
easily deployed and run on different systems or platforms without consuming
excessive resources.

This container image encapsulates the necessary components and configurations to
establish SSH connections, making it convenient for developers, system
administrators, and network engineers who frequently work with SSH. It includes
a minimal operating system with essential SSH client libraries and utilities,
ensuring that only the essential components are present, thus reducing the image
size and eliminating unnecessary overhead.

This container image can be easily customized and extended to meet specific
requirements. Users can add additional tools or libraries as needed, ensuring
that the container is tailored to their particular use cases. This flexibility
allows for seamless integration into existing development workflows and
facilitates the automation of SSH connection testing within CI/CD pipelines or
other automated processes.

Overall, the small container image for testing SSH connections offers a
practical and resource-efficient solution for verifying SSH connectivity. Its
simplicity, portability, and extensibility make it an invaluable asset for
anyone working with SSH and looking to streamline the process of testing and
troubleshooting SSH connections.

## Funding

Your contribution will help drive the development of quality tools for the
Flutter and Dart developer community. Any amount will be appreciated.
Thank you for your continued support!

[![BuyMeACoffee](https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg)](https://www.buymeacoffee.com/edufolly)

## PIX

Sua contribuição ajudará a impulsionar o desenvolvimento de ferramentas de
para a co munidade de desenvolvedores Flutter e Dart. Qualquer quantia será
apreciada.
Obrigado pelo seu apoio contínuo!

[![PIX](helpers/pix.png)](https://nubank.com.br/pagar/2bt2q/RBr4Szfuwr)

---

## Environment Variables

| Variable           | Description                                 | Default |
|--------------------|---------------------------------------------|---------|
| SSHD_USER          | User to connect                             | root    |
| SSHD_PASSWORD      | Password for the user                       | root    |
| SSHD_USER_FILE     | File (or secret) with user to connect       | ------- |
| SSHD_PASSWORD_FILE | File (or secret) with password for the user | ------- |

## How to Use

```shell
docker run --rm --name sshd -e "SSHD_USER=test" -e "SSHD_PASSWORD=test" -p 22022:22 -d testainers/sshd-container:latest
```

## How to Connect

```shell
ssh -p 22022 -o PubkeyAuthentication=no -o UserKnownHostsFile=/dev/null test@127.0.0.1
```

---

## Build

```shell
docker build . --no-cache -t sshd-container
```

## Run

```shell
docker run --rm --name sshd -e "SSHD_USER=test" -e "SSHD_PASSWORD=test" -p 22022:22 -d sshd-container
```
