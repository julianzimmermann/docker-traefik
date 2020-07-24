#!/bin/sh
set -e

export ESC="$"

envsubst < /conf/traefik.template > /traefik.yml