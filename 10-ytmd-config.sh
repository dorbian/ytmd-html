#!/bin/sh
set -eu

: "${YTMD_HOST:=192.168.0.3}"
: "${YTMD_PORT:=9863}"
: "${YTMD_PROTOCOL:=http}"
: "${YTMD_API_VERSION:=v1}"

cat > /usr/share/nginx/html/ytmd-config.js <<CONFIG
window.YTMD_CONFIG = {
  host: '${YTMD_HOST}',
  port: '${YTMD_PORT}',
  protocol: '${YTMD_PROTOCOL}',
  apiVersion: '${YTMD_API_VERSION}'
};
CONFIG
