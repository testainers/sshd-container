#!/bin/sh

echo "ENTRYPOINT"

### SSHD_USER_FILE
if [ -n "$SSHD_USER_FILE" ]
then
  SSHD_USER=$(cat "$SSHD_USER_FILE")
fi

### SSHD_USER
if [ -z "$SSHD_USER" ]
then
  SSHD_USER=root
fi

### SSHD_PASSWORD_FILE
if [ -n "$SSHD_PASSWORD_FILE" ]
then
  SSHD_PASSWORD=$(cat "$SSHD_PASSWORD_FILE")
fi

### SSHD_USER
if [ -z "$SSHD_PASSWORD" ]
then
  SSHD_PASSWORD=root
fi

### Create user if not exists.
id "$SSHD_USER" || adduser -D "$SSHD_USER" root

### Set password.
ssh-keygen -A && echo "$SSHD_USER:$SSHD_PASSWORD" | chpasswd

### Permit root login.
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

### Start sshd.
/usr/sbin/sshd -D -e
