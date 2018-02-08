#!/usr/bin/env bash
set -e

version=`cat version/number`
cd git-repo
./mvnw install -DskipTests
cp target/*.jar ../artifact-dir/${base_name}-${version}.jar
ls ../artifact-dir
