#!/bin/bash

set -e
VERSION="$1"
export VERSION


#sed -i "s/.*version: .*[+:]/version: $1+$newBuildNumber/g" "pubspec.yaml"
perl -i -pe 's/^(version:)(\s*)((\d+\.)+\d+)(\+)(\d+)$/$1.$2.$ENV{VERSION}.$5.($6+1)/e' pubspec.yaml
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
