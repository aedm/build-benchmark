#!/bin/bash

set -x
cd RxJava
gradle clean
gradle --stop
rm -rf ~/.gradle/caches/
time gradle assemble
cd -

