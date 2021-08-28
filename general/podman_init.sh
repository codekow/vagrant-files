#!/bin/bash

install_podman() {
  dnf -y install epel-release
  dnf -y install \
    podman \
    libvarlink-util \
    libvarlink
}

install_podman_fedora() {
  dnf -y install --enablerepo=updates-testing \
    podman \
    libvarlink-util \
    libvarlink
}

install_podman
