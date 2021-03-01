#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 603cb7da69a7b6a8f0074711

echo "stackbit-build.sh: finished build"
