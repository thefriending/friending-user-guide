#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

# Environment
docker run --rm -it \
        -v $(dirname $DIR):/media \
        -e GITLAB_URL="${GITLAB_URL}" \
        -e NAMESPACE="${NAMESPACE}" \
        -e PROJECT="${PROJECT}" \
        jrbeverly/pdf2htmlex:privileged sh