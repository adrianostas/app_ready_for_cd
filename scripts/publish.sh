#!/bin/bash

set -e

sed -i "s/version: */version: $1/g" pubspec.yaml
git add pubspec.yaml
git commit -m "commit_message"
git push origin master

chmod +x ./scripts/publish.sh
