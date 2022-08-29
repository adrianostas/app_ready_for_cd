#!/bin/bash

set -e

#sed -i '' "s/version.*/version: $1/g" pubspec.yaml

perl -i -pe 's/^(version:)(\s*)((\d+\.)+\d+)(\+)(\d+)$/$1.$2.${version}.$5.($6+1)/e' pubspec.yaml
git add pubspec.yaml

chmod +x ./scripts/publish.sh
