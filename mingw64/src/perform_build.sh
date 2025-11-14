#!/usr/bin/env bash
pushd ./gmp-6.3.0 >/dev/null
./configure --host='raptorlake-pc-windows' --build='raptorlake-pc-linux-gnu'
make
make check
cd ./demos
# Per https://gmplib.org/manual/Demonstration-Programs
make pexpr factorize isprime primes qcn
pushd ./calc >/dev/null
make calc
popd >/dev/null
pushd ./expr
make libexpr.a t-expr run-expr
popd >/dev/null
popd >/dev/null
