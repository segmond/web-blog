#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail

if [[ $# -eq 0 ]]; then
    echo "usage: ./scripts/newarticle.sh <title>"
    exit 1
fi

go build -o blog_app *.go
./blog_app -newarticle="$*" || true
rm blog_app

