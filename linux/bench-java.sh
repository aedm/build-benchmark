#!/bin/bash

set -x
pushd ~/bench/RxJava
gradle clean
gradle --stop
rm -rf ~/.gradle/caches/
time gradle assemble
popd

