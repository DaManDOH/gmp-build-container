#!/usr/bin/env bash
du -h | sort -k2 > ./pre-make_usage.tab
pushd ./gmp-6.3.0 >/dev/null
./configure
make
make check
popd >/dev/null
du -h | sort -k2 > ./post-make_usage.tab
