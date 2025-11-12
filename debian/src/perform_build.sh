#!/usr/bin/env bash
pushd ./gmp-6.3.0 >/dev/null
./configure
make
make check
popd >/dev/null
