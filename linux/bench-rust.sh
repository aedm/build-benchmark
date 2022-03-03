#!/bin/bash

set -x
cd bat
cargo clean
time cargo build
cd -
