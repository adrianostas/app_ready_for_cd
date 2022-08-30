#!/bin/bash

set -e
echo "$1"

oldnum=$(cut -d '+' -f2 "pubspec.yaml")
# shellcheck disable=SC2003
newnum=$(expr $oldnum + 1)


sed -i "s/.*version: .*[+:]/version: $1+$newnum/g" "pubspec.yaml"
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
