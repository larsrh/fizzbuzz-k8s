#!/usr/bin/env bash

set -eo pipefail

rm -f ./kind/actual

for i in `seq 1 100`; do curl -s http://localhost/$i | jq .args.response; done > ./kind/actual

diff ./kind/expected ./kind/actual
