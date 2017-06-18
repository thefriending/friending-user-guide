#!/bin/sh
set -ex

#
# Checks
#
if [ -z $ARTIFACT_URL ]; then echo "ARTIFACT_URL is unset"; exit 1; fi

#
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
BIN_DIR="${ROOT_DIR}/target"

#
# Pull
#
apk --update add zip 

rm -rf $BIN_DIR && mkdir -p $BIN_DIR
curl -L -o $BIN_DIR/artifacts.zip "$ARTIFACT_URL"
unzip $BIN_DIR/artifacts.zip -d $BIN_DIR