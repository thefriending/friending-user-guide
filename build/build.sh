#!/bin/sh
set -ex

#
# Variables
#
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
BIN_DIR="${ROOT_DIR}/target"
DEST_DIR="${ROOT_DIR}/public"

#
# Build
#
rm -rf $DEST_DIR
cd $BIN_DIR

mv manual.pdf index.pdf
pdf2htmlEX --zoom 1.5 --embed cfijo --dest-dir ${DEST_DIR} index.pdf

cd $ROOT_DIR && rm -rf $BIN_DIR