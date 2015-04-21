
FROM ubuntu:14.04
MAINTAINER Carlos Cabanes

ENV USER carloscabanes
ENV PASS password

RUN apt-get update && \
    apt-get install -yq pwgen openssh-server mcrypt  && \
    mkdir /var/run/sshd && chmod 0755 /var/run/sshd

ADD start.sh /usr/local/bin/start.sh
ADD sshd_config /etc/ssh/sshd_config

VOLUME ["/data"]
EXPOSE 22

ENTRYPOINT ["/bin/bash", "/usr/local/bin/start.sh"]
