# immich-cron-upload

Schedule uploads to immich

## Overview

Simple container that allows you to set a cron schedule to upload images to
immich. Basically just runs `immich upload` on a schedule.

## Running

This app can be run from a [pre-built docker container](https://hub.docker.com/r/evanofslack/immich-cron-upload/tags).

```yaml
services:
  immich-cron-upload:
    container_name: immich-cron-upload
    image: evanofslack/immich-cron-upload
    restart: unless-stopped
    environment:
      SCHEDULE: "@daily" # optional, alsp accepts cron syntax
      TZ: America/New_York
      IMMICH_INSTANCE_URL: http://localhost:2283/api
      IMMICH_API_KEY: key
      # IMMICH_IGNORE_PATHS: [] # optional
      # IMMICH_UPLOAD_CONCURRENCY: 4 # optional
      # IMMICH_ALBUM_NAME: "" # optional

      # Immich boolean env vars don't respect setting as true or false.
      # If set (regardless of value), they are interpreted as true.
      # Therefore, just uncomment to enable.
      IMMICH_RECURSIVE:
      IMMICH_AUTO_CREATE_ALBUM:
      IMMICH_DELETE_ASSETS:
      IMMICH_DRY_RUN:
      # IMMICH_SKIP_HASH:
      # IMMICH_INCLUDE_HIDDEN:
```

## Compatibility

Currently images are build for amd64, arm64, arm/v6 and arm/v7. The image has been
tested and runs on ubuntu and raspi.
