#!/bin/bash
set -e

# Replace version of pubspec.yaml with first parameter of shell script
sed -i '' "s/^version.*/version: $1/g" pubspec.yaml
sudo chmod u+x publish.sh