#!/bin/bash

set -e

#sed -i '' "s/version.*/version: $1/g" pubspec.yaml


sed -i 's/version: */version: $1/g' pubspec.yaml

chmod +x ./scripts/publish.sh
