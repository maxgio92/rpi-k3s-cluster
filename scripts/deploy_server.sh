#!/usr/bin/env bash

set -euo pipefail

source $PWD/scripts/init.sh
source $PWD/settings

k3sup="$(command -v k3sup)"

$k3sup install \
  --ip "${K3S_SERVER_IP}" \
  --user "${SSH_USER}" \
  --k3s-version "${K3S_VERSION}" \
  --k3s-extra-args "--node-name ${K3S_SERVER_HOSTNAME}"
