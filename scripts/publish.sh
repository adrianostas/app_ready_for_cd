#!/bin/bash
set -e
TAG=`git describe --tags`
export TAG
perl -i -pe 's/^(version:)(\s*)((\d+\.)+\d+)(\+)(\d+)$/$1.$2.$ENV{TAG}.$5.($6+1)/e' pubspec.yaml
git add pubspec.yaml
chmod +x ./scripts/publish.sh