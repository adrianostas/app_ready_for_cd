#!/bin/bash
set -e
chmod +x bump_version.sh
# Replace version of pubspec.yaml with first parameter of shell script
sed -i '' "s/^version.*/version: $1/g" pubspec.yaml
