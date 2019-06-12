#!/usr/bin/env sh

apk add --update --no-cache elixir postgresql-client git

mix local.hex --force
mix local.rebar --force

mkdir /opencov