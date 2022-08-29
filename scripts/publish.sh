#!/bin/bash
set -e

# Replace version of pubspec.yaml with first parameter of shell script
sed -i '' "s/^version.*/version: $1/g" pubspec.yaml
chmod -x ./scripts/publish.sh
git update-index --chmod=+x ./scripts/publish.sh
chmod +x ./scripts/publish.sh