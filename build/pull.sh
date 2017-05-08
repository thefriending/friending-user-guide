#!/bin/sh
set -ex

# Variable validation
#
# Verify that build variables are present.
if [ -z ${GITLAB_URL} ]; then echo "GITLAB_URL is unset"; exit 1; fi
if [ -z ${NAMESPACE} ]; then echo "NAMESPACE is unset"; exit 2; fi
if [ -z ${PROJECT} ]; then echo "PROJECT is unset"; exit 3; fi

curl -L -o artifacts.zip "${GITLAB_URL}/${NAMESPACE}/${PROJECT}/builds/artifacts/master/download?job=compile_pdf"