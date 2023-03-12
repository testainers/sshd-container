# sshd-container

## Build
```shell
docker build . --no-cache -t sshd-container
```

## Run
```shell
docker run --rm --name sshd -p 22022:22 -d sshd-container
```

## Connect
```shell
ssh -p 22022 -o PubkeyAuthentication=no -o UserKnownHostsFile=/dev/null root@127.0.0.1
```
