#!/bin/sh
set -ex

# Variable validation
#
# Verify that build variables are present.
if [ -z ${GITLAB_URL} ]; then echo "GITLAB_URL is unset"; exit 1; fi
if [ -z ${NAMESPACE} ]; then echo "NAMESPACE is unset"; exit 2; fi
if [ -z ${PROJECT} ]; then echo "PROJECT is unset"; exit 3; fi

apk --no-cache add curl zip

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
BIN_DIR="${ROOT_DIR}/target"
DEST_DIR="${ROOT_DIR}/public"

# Build
#
# Convert the pdf to an html representation.

rm -rf $DEST_DIR
mkdir -p $BIN_DIR && cd $BIN_DIR
#
curl -L -o artifacts.zip "${GITLAB_URL}/${NAMESPACE}/${PROJECT}/builds/artifacts/master/download?job=compile_pdf"
unzip artifacts.zip
mv manual.pdf index.pdf
pdf2htmlEX --zoom 1.5 --embed cfijo --dest-dir ${DEST_DIR} index.pdf
#
cd $DIR && rm -rf $BIN_DIR