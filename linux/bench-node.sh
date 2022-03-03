#!/bin/bash

set -x
cd jest
rm -rf dist
time yarn build
cd -

