#!/bin/sh
set -e

#
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

# Environment
docker run --rm \
        -v $(dirname $DIR):/media \
        -e ARTIFACT_URL="${ARTIFACT_URL}" \
        --workdir /media \
        appropriate/curl sh build/pull.sh

docker run --rm \
        -v $(dirname $DIR):/media \
        -e ARTIFACT_URL="${ARTIFACT_URL}" \
        jrbeverly/pdf2htmlex:baseimage sh build/build.sh