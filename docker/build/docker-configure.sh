#!/usr/bin/env sh

set -eux

apk add --no-cache build-base yarn

cd /opencov
yarn install
mix deps.get
mix compile
mix assets.compile

apk del build-base yarn