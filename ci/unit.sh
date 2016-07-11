#!/bin/sh

set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
cd git-repo
gradle assemble -PVersion=$version
mv build/libs/spring-music-*.war ../build/
