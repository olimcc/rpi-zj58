#!/usr/bin/env bash
set -e

/etc/init.d/cups start

echo "running printer configuration.."
/usr/src/app/scripts/configure-printer.sh
exec "$@"

