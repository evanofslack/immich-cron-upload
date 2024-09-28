#! /bin/sh

if [ -z "$IMMICH_API_KEY" ]; then
  echo "You need to set the IMMICH_API_KEY environment variable"
  exit 1
fi

if [ -z "$IMMICH_INSTANCE_URL" ]; then
  echo "You need to set the IMMICH_INSTANCE_URL environment variable"
  exit 1
fi
