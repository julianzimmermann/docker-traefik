#!/bin/sh
set -e

mkdir -p ~/traefik/data
htpasswd -bcB ~/traefik/data/.htpasswd $HTACCESS_USER $HTACCESS_PASS

exec "$@"