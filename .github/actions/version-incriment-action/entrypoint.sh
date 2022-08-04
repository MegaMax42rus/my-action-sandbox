#!/bin/sh -l

git config --global --add safe.directory /github/workspace
git tag
git describe --tags
echo "$(git describe --tags | grep -Po '^(v\d.\d.)(\d)-\d-.*' | cut -d. -f1,2).$(echo "$(git describe --tags | grep -Po '^(v\d.\d.)(\d)-\d-.*' | cut -d. -f3 | cut -d- -f1) + 1 " | bc)"