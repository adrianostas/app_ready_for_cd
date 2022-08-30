#!/bin/bash

set -e
echo "$1"

oldnum=$(cut -d '+' -f2 "pubspec.yaml")

newnum=$((oldnum + 1))

echo newnum

sed -i "s/.*version: .*[+:]/version: $1+$newnum/g" "pubspec.yaml"
git add pubspec.yaml
git commit -m "update_pubspec"
git push origin master

chmod +x ./scripts/publish.sh
