#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/scripts"

case "${1:-all}" in
  all)
    ./00_preflight.sh
    ./01_install.sh
    ./02_configure.sh
    ./03_format.sh
    ./04_start.sh
    ./05_verify.sh ;;
  preflight) ./00_preflight.sh ;;
  install)   ./01_install.sh ;;
  configure) ./02_configure.sh ;;
  format)    ./03_format.sh ;;
  start)     ./04_start.sh ;;
  verify)    ./05_verify.sh ;;
  stop)      ./06_stop.sh ;;
  *) echo "usage: $0 [all|preflight|install|configure|format|start|verify|stop]"; exit 2 ;;
esac
