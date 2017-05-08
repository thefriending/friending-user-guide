#!/bin/sh
set -e

docker run --rm \
        -v $(dirname $(pwd)):/media \
        -e GITLAB_URL="${GITLAB_URL}" \
        -e NAMESPACE="${NAMESPACE}" \
        -e PROJECT="${PROJECT}" \
        jrbeverly/pdf2htmlex:privileged sh build/build.sh