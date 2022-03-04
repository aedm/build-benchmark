#!/bin/bash

set -x
pushd ~/bench/RxJava
gradle clean
gradle --stop
time gradle assemble --no-build-cache
popd

