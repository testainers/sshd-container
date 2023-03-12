FROM alpine:3.17

RUN apk add --no-cache openssh && ssh-keygen -A && echo 'root:root' | chpasswd
# RUN sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes" /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D", "-e"]
