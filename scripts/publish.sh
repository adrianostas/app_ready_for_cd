#!/bin/bash

set -e
echo "$1"
sed -i "s/.*version: .*/version: $1/g" find . -path "app_ready_for_cd/pubspec.yaml"
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
