#!/bin/sh
set -e

#
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

# Environment
docker run --rm -it \
        -v $(dirname $DIR):/media \
        -e ARTIFACT_URL="${ARTIFACT_URL}" \
        jrbeverly/pdf2htmlex:privileged sh