#!/bin/bash

set -e
echo "$1"
sed -i "s/.*version: .*/version: $1+${{env.NUMBER_OF_COMMITS}}/g" "pubspec.yaml"
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
