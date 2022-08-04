#!/bin/sh -l

git config --global --add safe.directory /github/workspace
git tag
git describe --tags
