#!/bin/bash

set -e
echo "$1"

oldBuildNumber=$(cut -d '+' -f2 "pubspec.yaml")

newBuildNumber=$((oldBuildNumber + 1))

echo oldBuildNumber
echo HERE newBuildNumber

sed -i "s/.*version: .*[+:]/version: $1+$newBuildNumber/g" "pubspec.yaml"
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
