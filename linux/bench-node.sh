#!/bin/bash

set -x
pushd ~/bench/jest
yarn build-clean
time yarn build
popd

