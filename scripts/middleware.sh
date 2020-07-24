#!/bin/sh
set -e

export ESC="$"

envsubst < /conf/middleware.template > /middleware.yml