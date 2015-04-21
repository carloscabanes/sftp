
FROM ubuntu:14.04
<<<<<<< HEAD
MAINTAINER Knut Ahlers <knut@ahlers.me>

ENV USER share
ENV PASS changeme
=======
MAINTAINER Carlos Cabanes

ENV USER user
ENV PASS password
>>>>>>> origin/master

RUN apt-get update && \
    apt-get install -yq pwgen openssh-server mcrypt  && \
    mkdir /var/run/sshd && chmod 0755 /var/run/sshd

ADD start.sh /usr/local/bin/start.sh
ADD sshd_config /etc/ssh/sshd_config

VOLUME ["/data"]
EXPOSE 22

ENTRYPOINT ["/bin/bash", "/usr/local/bin/start.sh"]
