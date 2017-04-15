#!/bin/sh
set -ex

docker run --rm \
        -v $(pwd):/media \
        -e ARTIFACT_TOKEN=${ARTIFACT_TOKEN} \
        -e GITLAB_URL=${GITLAB_URL} \
        -e PROJECT_ID=${PROJECT_ID} \
        jrbeverly/pdf2htmlex:privileged sh build/build.sh