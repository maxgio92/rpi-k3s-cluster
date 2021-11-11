#!/usr/bin/env bash

set -eo pipefail

command -v k3sup || \
  { curl -sLS https://get.k3sup.dev | sh; \
   sudo install k3sup /usr/local/bin/ ; }
