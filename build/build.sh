#!/bin/sh
set -ex

apk --no-cache add curl zip

mkdir target/ && cd target/
curl -o artifacts.zip --header "PRIVATE-TOKEN: ${ARTIFACT_TOKEN}" "${GITLAB_URL}/api/v3/projects/${PROJECT_ID}/builds/artifacts/master/download?job=compile_pdf"
unzip artifacts.zip
pdf2htmlEX --zoom 1.5 --embed cfijo --dest-dir ../public manual.pdf