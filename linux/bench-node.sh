#!/bin/bash

set -x
pushd ~/bench/jest
rm -rf dist
time yarn build
popd

