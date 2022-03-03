#!/bin/bash

set -x
pushd ~/bench/bat
cargo clean
time cargo build
popd
