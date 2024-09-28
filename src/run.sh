#! /bin/sh

set -eu

if [ -z "$SCHEDULE" ]; then
  sh upload.sh
else
  exec go-cron "$SCHEDULE" /bin/sh upload.sh
fi
