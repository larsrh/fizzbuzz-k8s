#!/usr/bin/env bash

set -exo pipefail

rm -f ./kind/actual

for i in `seq 1 100`; do curl -s http://localhost/$i ; done > ./kind/actual

diff ./kind/expected ./kind/actual
