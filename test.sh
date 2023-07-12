#! /bin/bash
set -e
set -x

docker build . --no-cache -t sshd-container-test

docker run --rm --name sshd -p 22022:22 -d sshd-container-test

sleep 2

sshpass -v -p "root" ssh \
  -o StrictHostKeyChecking=no \
  -o UserKnownHostsFile=/dev/null \
  -o PubkeyAuthentication=no \
  -p 22022 root@127.0.0.1 uptime

docker stop -t 1 sshd

sleep 2

docker run --rm --name sshd \
  -e "SSHD_USER=test" \
  -e "SSHD_PASSWORD=test" \
  -p 22022:22 -d sshd-container

sleep 2

sshpass -v -p "test" ssh \
  -o StrictHostKeyChecking=no \
  -o UserKnownHostsFile=/dev/null \
  -o PubkeyAuthentication=no \
  -p 22022 test@127.0.0.1 uptime

docker stop -t 1 sshd

docker image rm sshd-container-test
