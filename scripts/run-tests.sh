#!/usr/bin/env bash

set -eao pipefail

source ./environment.test.sh

export DATALOG_DIR="cbits/"

if [ -z "$1" ] ;
then
  cabal test
else
  ghcid --command='cabal v2-repl flora-test' --test 'Main.main'
fi