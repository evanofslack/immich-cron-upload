#! /bin/sh

set -eu
set -o pipefail

source ./env.sh

IMPORT_DIR="/import"

immich upload $IMPORT_DIR
