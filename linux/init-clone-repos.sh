#!/bin/bash

set -x

mkdir ~/bench
pushd ~/bench

git clone --depth 1 --branch v0.92.0 https://github.com/gohugoio/hugo.git
git clone --depth 1 --branch v0.20.0 https://github.com/sharkdp/bat.git
git clone --depth 1 --branch v3.1.3 https://github.com/ReactiveX/RxJava.git
git clone --depth 1 --branch v27.5.1 https://github.com/facebook/jest.git

# Node/yarn doesn't download packages automatically upon build, need to do it manually
pushd jest
yarn
popd

popd
