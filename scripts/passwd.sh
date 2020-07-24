#!/bin/sh
set -e

htpasswd -bcB /data/.htpasswd "$HTACCESS_USER" "$HTACCESS_PASS"