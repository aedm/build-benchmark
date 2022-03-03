#!/bin/bash

set -x
pushd ~/bench/hugo
go clean -cache
time go build
popd