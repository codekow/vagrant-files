#!/bin/bash

podman_info() {
  echo "
  on your host run the following
  podman system connection add podman ssh://vagrant@127.0.0.1:1337 --identity \$(pwd)/.vagrant/machines/$(hostname)/virtualbox/private_key
  "
}

podman_setup() {
  systemctl --user enable --now podman
  sudo loginctl enable-linger $USER
  #podman --remote info
}

podman_setup
podman_info
