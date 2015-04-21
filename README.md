# sftp
ftp with custom seed password - random

carloscabanes/sftp Dockerfile

This repository contains Dockerfile of sftp for Docker's automated build published to the public Docker Hub Registry.
Base Docker Image

    ubuntu

Installation

    Install Docker.

    Download automated build from public Docker Hub Registry: docker pull carloscabanes/sftp

Usage

To launch it and have your share listen on port 2022, just type:

docker run -d -p 2022:22 -e USER=myuser -e PASS=myverysecretpassword carloscabanes/sftp
