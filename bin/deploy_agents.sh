#!/usr/bin/env bash

set -euo pipefail

source $PWD/bin/init.sh
source $PWD/config/cluster/settings

k3sup="$(command -v k3sup)"

for ip in "${K3S_AGENTS_IPS}"; do
  set -e;
  $k3sup join \
    --ip $ip \
    --server-ip \
    "${K3S_SERVER_IP}" \
    --user "${SSH_USER}" \
    --k3s-version "${K3S_VERSION}";
done

